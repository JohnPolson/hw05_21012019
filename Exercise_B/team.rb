class Team

  attr_accessor :team_name,:coach_name, :players, :points

def initialize(team_name, coach_name, players, points)
    @team_name = team_name
    @coach_name = coach_name
    @players = players
    @points = 0
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
    return @coach_name
  end

  def add_players(player)
    @players.push(player)
    return @players
  end

  def check_player(player)
    if valid_player = @players.include?(player)
    return "#{player} is on the team"
  else "#{player} is NOT on the team"
  end
end


  def winners_points(result)
       if result == "win"
         @points += 3
       else result == "lose"
         @points += 0
       end
     return @points
   end

end
