require 'json'

module JSONtoDB
  # This module handles input/output operations
  # for the library
  module IO
    module_function

    def read(src)
      hash = JSON.parse(File.read(src))
      hash
    end
  end
end
