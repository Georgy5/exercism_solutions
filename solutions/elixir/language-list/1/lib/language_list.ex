defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    list = [language | list]
  end

  def remove(list) do
    list -- [List.first(list)]
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
