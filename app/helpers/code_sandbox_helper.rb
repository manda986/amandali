module CodeSandboxHelper
  def valid_palindrome(s)
    if s.blank?
      return true
    end

    # strip out non-words
    clean = s.gsub(/[\W\s]/, '').downcase

    begPtr = 0
    endPtr = clean.length() -1

    while (begPtr < endPtr)
      if (clean.chars[begPtr] == clean.chars[endPtr])
        begPtr+=1
        endPtr-=1
      else
        return false
      end
    end
    return true

  end

  def longest_consecutive_sequence(int_array)
    if int_array.nil?
      return nil
    end

    if int_array.length() == 1
      return 1
    end

    sorted_array = int_array.sort
    longest = 1

    sorted_array.each_with_index do |num, i|
      local_longest = 1
      start = i

      while ((sorted_array[start+1] == sorted_array[start] + 1) &&
             (start < sorted_array.length() -1))
        local_longest+=1
        start+=1
      end

      if local_longest >longest
        longest = local_longest
      end
    end

    return longest
  end



  def add(numbers)


  end

end
