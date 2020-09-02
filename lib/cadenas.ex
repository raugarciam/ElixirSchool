defmodule Cadenas do
  @moduledoc """
  Las cadenas en Elixir no son mas que una secuencia de bytes.
  """

  @doc """
  cadena

  ## Parametros

    N/A

  ## Ejemplos

      iex> string = <<104,101,108,108,111>>
      "hello"
      iex> string <> <<0>>
      <<104, 101, 108, 108, 111, 0>>
  """
  def cadenas do
    string = <<104, 101, 108, 108, 111>>
    IO.puts("#{string}")
    IO.puts("#{string <> <<104>>}")
    string2 = "\u0061\u0301"
    IO.puts("#{String.codepoints string2}")

    # Longitud
    IO.puts("#{String.length("Hola")}")
    # Remplazar
    IO.puts("#{String.replace("Raul", "u", "a")}")
    # Duplicar
    IO.puts("#{String.duplicate("Raul ", 3)}")
    # Dividir
    IO.puts("#{inspect(String.split("Raul Garcia", " "))}")
  end
end
