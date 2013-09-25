class Timeline < ActiveRecord::Base


  # A set is a group of unsorted but unique numbers
  @@set = Set.new
  def self.set
    @@set
  end

  @@ranges = []
  def self.ranges
    @@ranges
  end

  def self.ranges=(value)
    @@ranges = value
  end

  def add(numbers)
    numbers.each do |num|
      Timeline.set << num
    end

    # divide the set into sets using the divide method
    sets = Timeline.set.divide {|i,j| (i-j).abs ==1 }

    Timeline.ranges = []
    sets.each do |set|
      Timeline.ranges.push(set.sort.first..set.sort.last)
    end

    Timeline.ranges
  end

end
