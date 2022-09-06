class HighScoreTable
  def initialize(score)
    @max_score = score
    @score = []
  end

  def scores
    @score.sort.reverse
  end

  def update(add_param)
    return @score.push(add_param) if @score.length < @max_score

    @score[@score.index(@score.min)] = add_param if @score.min < add_param
  end

  def reset
    @score = []
  end
end

highScoreTable = HighScoreTable.new(3)
puts highScoreTable.scores == []
highScoreTable.update(10)
puts highScoreTable.scores == [10]
highScoreTable.update(8)
highScoreTable.update(12)
highScoreTable.update(5)
highScoreTable.update(10)
puts highScoreTable.scores
puts highScoreTable.scores == [12, 10, 10]
highScoreTable.reset
puts highScoreTable.scores == []