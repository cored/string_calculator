require 'spec_helper'

describe StringCalculator do 

  context 'single numbers' do 
    it 'returns 0 with empty' do 
      expect("".extend(StringCalculator).add).to eql 0
    end

    it 'returns single number' do 
      expect("1".extend(StringCalculator).add).to eql 1
    end
  end

  context 'more than one number' do 
    it 'returns the sum of two numbers' do 
      expect("1,2".extend(StringCalculator).add).to eql 3
    end

    it 'returns the sum of an unknown amount of numbers' do 
      expect("1,2,3,4,5".extend(StringCalculator).add).to eql 15
    end
  end

  context 'different delimeters' do 
    it 'returns the sum of two numbers with newline as delimiter' do 
      expect("1\n2".extend(StringCalculator).add).to eql 3
    end

    it 'returns the sum of an unknown amount of numbers with mixed delimeters' do 
      expect("1,2,3\n4,5".extend(StringCalculator).add).to eql 15
    end
  end

  context 'changing the delimeter' do 
    it 'returns the sum of two numbers with a different delimeter' do 
      expect("//;\n1;2".extend(StringCalculator).add).to eql 3
    end
  end

end
