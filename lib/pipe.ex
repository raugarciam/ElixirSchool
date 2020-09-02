defmodule Pipe do
  @moduledoc """
   Elixir adopta un enfoque pragmático a este caos sintáctico al darnos el operador pipe. El operador pipe que luce así |> toma el resultado de una expresión, y se lo pasa a la siguiente. Vamos a echar otro vistazo al código anterior reescrito con el operador pipe.
  """
  @doc """
  separaCadenas

  ## Parametros

    cadena -> String

  ## Ejemplos

      iex> "Elixir language" |> String.split()
      ["Elixir", "language"]
  """
  def separaCadenas(cadena) do
    cadena |> String.split()
  end

  @doc """
  mayusculas

  ## Paramteros

    cadena -> String

  ## Ejemplos

      iex> "Elixir language" |> String.upcase() |> String.split()
      ["ELIXIR", "LANGUAGE"]
  """
  def mayusculas(cadena) do
    cadena |> String.upcase() |> String.split()
  end

  @doc """
  comparafin

  ## Parametros

    cadena -> String

  ## Ejemplos

      iex> "elixir" |> String.ends_with?("ixir")
      true
  """
  def comparafin(cadena) do
    cadena |> String.ends_with?("aul")
  end
end
