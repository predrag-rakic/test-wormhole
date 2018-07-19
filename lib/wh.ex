defmodule Wh do
  @moduledoc """
  Documentation for Wh.
  """

  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: :wh)
  end

  def raise, do: GenServer.call(:wh, :a)
  def throw, do: GenServer.call(:wh, :b)

  def handle_call(:a, _, _state), do: raise "Raising exception"
  def handle_call(:b, _, _state), do: throw "Throwing exception"

  @doc """
  Hello world.

  ## Examples

      iex> Wh.hello
      :world

  """
  def hello do
    :world
  end
end
