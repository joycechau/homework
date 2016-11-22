class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups = Array.new(14) { [] }
    cups.each_with_index do |cup, i|
      next if i == 6 || i == 13
      4.times { cups[i] << :stone }
    end
    cups
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos >= 13 || start_pos <= 0 ||
    start_pos == 6
  end

  def make_move(start_pos, current_player_name)
    current_index = start_pos
    stones = @cups[start_pos]
    until stones.empty?
      current_index += 1
      current_index = 0 if current_index > 13
      if current_index == 6
        @cups[current_index] << stones.pop if current_player_name == @name1
      elsif current_index == 13
        @cups[current_index] << stones.pop if current_player_name == @name2
      else
        @cups[current_index] << stones.pop
      end
    end
    render
    next_turn(current_index)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    return :draw if @cups[6] == @cups[13]
    @cups[6].length > @cups[13].length ? @name1 : @name2
  end
end
