defmodule ChatServer do
  @moduledoc """
  Documentation for ChatServer.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ChatServer.hello
      :world

  """
  def hello do
    :world
  end

  def loop() do
    loop([])
  end
  def loop(state) do
    receive do
      {:add_msg, msg} ->
        loop([state | msg])
      {:get, from} ->
        send(from, state)
        loop(state)
    end
  end
end
