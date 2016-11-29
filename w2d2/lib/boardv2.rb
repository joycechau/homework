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
    cups.each_with_index do |cup, idx|
      cups[idx] += [:stone, :stone, :stone, :stone] unless idx == 6 || idx == 13
    end
    cups
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos.between?(1, 13)
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    current_index = start_pos
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
    return true if @cups[0..5].all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty? }
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return @name1 if @cups[6].length > @cups[13].length
    @name2
  end
end
