class Hanoi
  def hanoi
    line1 = STDIN.gets
    discs, num_pegs = line1.split(' ')

    pegs = Array.new(num_pegs)

    line2 = STDIN.gets
    line2.split(' ').each_with_index do |peg, i|
      pegs[peg] += "#{i+1}"
    end

    final_pegs = Array.new(num_pegs)

    line3 = STDIN.gets
    line3.split(' ').each_with_index do |peg, i|
      final_pegs[peg] += "#{i+1}"
    end


    moves = Array.new
    while !pegs.equal?(final_pegs)
      pegs.each_with_index do |peg, i|
        if pegs[i] != final_pegs[i]

        end
      end
    end

  end

end
