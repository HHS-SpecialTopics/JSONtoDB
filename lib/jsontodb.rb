require 'cogwheels'

# This library provides functionality to perform REST operations from the
# command-line.  It also provides the capability to use JSON in HTTP requests.
#
# Licensed under the MIT License:
#
# Copyright (c) 2016 Christopher Lutz
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
module JSONtoDB
  autoload :CLI, 'jsontodb/cli'
  autoload :IO, 'jsontodb/io'
  autoload :Processor, 'jsontodb/processor'
  autoload :REST, 'jsontodb/rest'

  module_function

  CONFIG = if ARGV.empty?
             Cogwheels.load(File.join(File.dirname(__FILE__), '/../config/generic.yml'))
           else
             Cogwheels.load(ARGV.shift)
           end

  def start
    JSONtoDB::Processor.run_config
  end
end
