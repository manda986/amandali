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
end
