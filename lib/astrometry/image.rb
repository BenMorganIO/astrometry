module Astrometry
  class Image
    # @param input [String] The input is the file that is to be parsed by astrometry.
    attr_accessor :input

    # @param file [String] The file that is to be parsed.
    # @return [String]
    def initialize(file)
      @input = file
    end

    # Executes the astrometry `solve-field` command and begins parsing your
    # image.
    # @return [TrueClass] if the image is successfully parsed.
    # @return [NilClass] if the image if unsuccessfully parsed.
    def solve_field
      system "solve-field #{file}"
    end
  end
end
