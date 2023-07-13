class Team 

  attr_reader :roster

  def initialize(team, location)
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    long_termers = []
    @roster.each do |player|
      player.contract_length > 24
      long_termers << player
    end
    long_termers
  end

  def short_term_players
    short_termers = []
    @roster.each do |player|
      player.contract_length < 24 
      short_termers << player
    end
    short_termers
  end

  def total_value
    value = []
    @roster.each do |player|
      value << player.monthly_cost * player.contract_length
    end
    value.sum.to_i
  end

  def details
    Hash.new = 
      team[:total_value] = team.total_value,
      team[:player_count] = team.player_count
  end
end