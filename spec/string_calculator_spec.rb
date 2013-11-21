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

end
