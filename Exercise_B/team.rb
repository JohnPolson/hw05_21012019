class Team

  attr_accessor :team_name,:coach_name, :players

def initialize(team_name, coach_name, players)
    @team_name = team_name
    @coach_name = coach_name
    @players = players
  end

  def get_team_name()
    return @team_name
  end

  def get_coach_name()
    return @coach_name
  end

  def get_players()
    return @players
  end

  def set_coach_name(new_name)
    @coach_name = new_name
  end

  def add_players()
    return @players
  end



end
