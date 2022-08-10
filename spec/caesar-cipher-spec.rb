require 'spec_helper'
require_relative '../caesar-cipher'

RSpec.describe 'Caesar Cipher' do

  describe 'implement caesar cipher to words' do
    
    it 'returns caesar cipher encrypted word(1)' do
      string = "abcde"
      result = "bcdef"
      expect(caesar_cipher(string, 1)).to eq(result)
    end
  end
end
