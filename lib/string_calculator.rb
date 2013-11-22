require "string_calculator/version"

module StringCalculator
  def add 
    return 0 if empty?
    Numbers.new(self, Delimiter.for(self)).sum
  end

  class Numbers 
    def initialize(nums, delimiter)
      @delimiter = delimiter
      @values = nums.split(delimiter).map(&:to_i)
    end

    def sum
      @values.reduce(&:+)
    end
  end

  class Delimiter 
    def self.for(values)
      new(values).delimiter
    end

    def initialize(values)
      @values = values
      freeze
    end

    def delimiter
      if @values.start_with? '//'
        @values[2,1]
      else 
        /,|\n/
      end
    end
  end

end
