defmodule Iamapettyman do
  @moduledoc """
  Documentation for `Iamapettyman`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Iamapettyman.hello()
      :world

  """
  def all_of_the_words() do
    File.read!("/usr/share/dict/words") |> String.split()
  end

  def all_of_the_words(0, _source, acc) do
    acc
  end

  def all_of_the_words(times, source, acc) do
    IO.inspect(times)
    all_of_the_words(times - 1, source, acc ++ source)
  end

  def doing_the_enum(list)  do
    Enum.map(list, &String.downcase(&1))
  end

  def doing_the_for(list) do
    for x <- list, do: String.downcase(x)
  end

end
