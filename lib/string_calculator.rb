require "string_calculator/version"

module StringCalculator
  def add 
    return 0 if empty?
    Numbers[self].sum
  end

  class Numbers 
    class << self 
      alias :[] :new
    end

    def initialize(nums)
      @values = nums.split(Delimiter.for(nums)).map(&:to_i)
    end

    def sum
      @values.reduce(&:+)
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

end
