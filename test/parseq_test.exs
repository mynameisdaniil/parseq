defmodule ParseqTest do
  use ExUnit.Case
  doctest Parseq

  test "greets the world" do
    assert Parseq.hello() == :world
  end
end
