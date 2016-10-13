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



  #steps: 0  1  2  3  4
  #f(n):  1  1  2  3  5
  def fib(steps)
    if steps == 0 ||steps == 1
      return 1
    else
      return fib(steps-2) + fib(steps-1)
    end
  end

  #steps: 0  1  2  3  4
  #f(n):  1  1  2  3  5
  def fib_nonr(steps)
    if steps == 0 ||steps == 1
      return 1
    end

    p_total = 1
    total = 2

    while steps > 2
      dummy = p_total
      p_total = total
      total += dummy
      steps -= 1
    end

    return total
  end

  def sprockets(filename, files)
    f = File.new(filename)
    files ||= []

    line = f.gets

    while line != nil
      if line =~ /^\/\/\=/
        fname = line.split(' ')[2]
        if !files.include? fname
          fname = fname.include?('.js') ? fname : fname+'.js'
          files.push(fname)
          sprockets(fname, files)
          puts fname
        end
      end
      line = f.gets
    end

    f.close
  end

  def avg_length(lines)
    lines.sum.length / lines.length
  end




  def next_server_number(numbers)
    dummy_numbers = numbers.sort
    dummy_numbers.uniq!

    if smallest > 1
      return 1
    end

    i = 1
    while dummy_numbers.include? i
      i+=1
    end

    i

  end

end
