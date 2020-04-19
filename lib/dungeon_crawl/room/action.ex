defmodule DungeonCrawl.Room.Action do
  alias DungeonCrawl.Room.Action

  @type t :: %Action{id: atom, label: String.t}
  defstruct label: nil, id: nil

  defimpl String.Chars do
    def to_string(action), do: action.label
  end

  def forward, do: %Action{id: :forward, label: "Move Forward."}
  def rest, do: %Action{id: :rest, label: "Take a better look and rest."}
  def search, do: %Action{id: :forward, label: "Search the room."}
end
