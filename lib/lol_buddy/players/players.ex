defmodule LolBuddy.Players do
  @moduledoc """
  Api calls related to a player
  """

  alias LolBuddy.Players.Matching

  def get_matches(player, other_players) do
      Enum.filter(other_players, &(Matching.match?(player, &1)))
  end
end
