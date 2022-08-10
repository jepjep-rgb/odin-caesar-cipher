def caesar_check(char_numbers)
  char_numbers.each do |char|
    unless char.between?(65, 122)
      return false
    end
  end
  return true
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
end