def find_first_repeated_char(original_string)
  chars = original_string.split('')
  clean_hash = {}
  chars.each_with_index do |char, index|
    if clean_hash[char].nil?
      clean_hash[char] = index
    else
      puts "The first repeting character is: #{char} at position: #{index}"
      break
    end
  end
end


# Some thoughts
# O(N) Worst case scenario it will read each element of the array
# O(1) Best case scenario, it will find it at the first iteration

# Test cases
# find_first_repeated_char('XFBNOBNZ')
find_first_repeated_char('DJA01SDFDJADSFLD')
