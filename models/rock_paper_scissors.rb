class RockPaperScissors

  def initialize(first,second)
    @first = first
    @second = second
  end

  def play
    # temporary fake logic
    if @first == 'paper'
      if @second == 'rock'
        winner = 'first'
        with = @first
      elsif @second == 'scissors'
        winner = 'second'
        with = @second
      elsif @second == 'paper'
        winner = "no"
        with = "same entry"
      else
        winner = "no"
        with = "unknown entry"
      end
    elsif @first == 'rock'
      if @second == 'rock'
        winner = "no"
        with = "same entry"
      elsif @second == 'scissors'
        winner = "first"
        with = @first
      elsif @second == 'paper'
        winner = "second"
        with = @second
      else
        winner = "no"
        with = "unknown entry"
      end
    elsif @first == 'scissors'
      if @second == 'rock'
        winner = "second"
        with = @second
      elsif @second == 'scissors'
        winner = "no"
        with = "same entry"
      elsif @second == 'paper'
        winner = "first"
        with = @first
      else
        winner = "no"
        with = "unknown entry"
      end
    else
      winner = "no"
      with = "unknown entries"
    end

    return "the #{winner} player with #{with}"

  end

end
