require 'spec_helper'
require_relative '../caesar-cipher'

RSpec.describe 'Caesar Cipher' do

  describe 'implement caesar cipher to words' do
    
    it 'returns caesar cipher encrypted word(1)' do
      string = "abcde"
      result = "bcdef"
      expect(caesar_cipher(string, 1)).to eq(result)
    end

    it 'returns caesar cipher encypted words(2)' do
      string = "hello world"
      result = "jgnnq yqtnf"
      expect(caesar_cipher(string, 2)).to eq(result)
    end

    it 'returns caesar cipher encrypted words with capitalization' do
      string = "What a string"
      result = "Bmfy f xywnsl"
      expect(caesar_cipher(string, 5)).to eq(result)
    end
  end
end
