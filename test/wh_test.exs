defmodule WhTest do
  use ExUnit.Case
  doctest Wh

  test "greets the world" do
    Wh.start_link

    assert Wormhole.capture(fn -> Wh.throw end) == ""
  end
end
