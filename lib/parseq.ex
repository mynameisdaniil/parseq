defmodule Parseq do
  @moduledoc """
  Documentation for `ParSeq`.
  """

  defstruct stack: []

  @spec par(fun :: function(), args: list(term())) :: any()
  def par(fun, args) do
    apply(fun, args)
  end

  @spec seq(fun :: function(), args: list(term())) :: any()
  def seq(fun, args) do
    apply(fun, args)
  end
end
