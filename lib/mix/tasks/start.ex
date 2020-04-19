defmodule Mix.Tasks.Start do
  use Mix.Task
  alias Mix.Shell.IO, as: Shell
  def run(_) do
    Shell.cmd("clear")
    DungeonCrawl.CLI.Main.start_game
  end
end
