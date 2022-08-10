def caesar_check(char_numbers)
  char_numbers.each do |char|
    if char == 32
      next
    end
    
    unless char.between?(65, 122)
      return true
    end
  end
end

def caesar_shift(char_numbers, shift)
  shifted_numbers = char_numbers.map do |char|
    if char.between?(65, 90)
      char += shift
      if char > 90
        char = 64 + (char % 90)
      end
    elsif char.between?(91, 122)
      char += shift
      if char > 122
        char = 90 + (char % 122)
      end
    end
    char
  end
  shifted_numbers
end

def shift_check(shift)
  while shift < 0
    shift = 26 + shift
  end
  shift = shift % 26
end

def caesar_cipher(string, shift)
  char_numbers = string.split('').map { |char| char.ord }
  norm_shift = shift_check(shift)

  unless caesar_check(char_numbers)
    return
  end
  
  caesar_shifted = caesar_shift(char_numbers, norm_shift)

  caesar_string = caesar_shifted.map { |char| char.chr }.join('')
end