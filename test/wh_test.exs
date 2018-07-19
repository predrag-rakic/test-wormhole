defmodule WhTest do
  use ExUnit.Case
  doctest Wh

  test "greets the world" do
    {:ok, pid} = Wh.start_link
    Process.unlink(pid)

    assert Wormhole.capture(fn -> Wh.raise end, stacktrace: true) == ""
  end
end
