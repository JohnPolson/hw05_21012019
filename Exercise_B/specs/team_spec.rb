require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

  def setup
    @record_1 = Team.new('JPs Team', 'JPs Team Coach', ["JP_player01", "JP_player02", "JP_player03"])
  end


  def test_get_team_name
    assert_equal('JPs Team', @record_1.get_team_name())
  end

  def test_get_coach_name
    assert_equal('JPs Team Coach', @record_1.get_coach_name())
  end

  def test_get_players
    assert_equal(["JP_player01", "JP_player02", "JP_player03"], @record_1.get_players())
  end

  def test_set_coach_name
    @record_1.coach_name = 'Coach Alice'
    assert_equal('Coach Alice', @record_1.coach_name())
  end

  def test_add_player
    new_player = "JP_player04"
    @record_1.players.push(new_player)
    assert_equal(["JP_player01", "JP_player02", "JP_player03", "JP_player04"], @record_1.add_players())
  end


end
