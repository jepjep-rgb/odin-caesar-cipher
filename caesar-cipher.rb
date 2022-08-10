def shift_check(shift)
  while shift < 0
    shift = 26 + shift
  end
  shift = shift % 26
end

def caesar_cipher(string, shift)
  char_numbers = string.split('').map { |char| char.ord }
  norm_shift = shift_check(shift)
end