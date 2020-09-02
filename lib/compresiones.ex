defmodule Compresiones do
  @moduledoc """
  Las comprensiones algunas veces pueden ser usadas para producir declaraciones mas concisas para iterar sobre Enum y Stream.
  """
  import Integer
  @doc """
  compresion

  ## Parametros

    lista -> List

    iex> list = [1, 2, 3, 4, 5]
    iex> for x <- list, do: x * x
    [1, 4, 9, 16, 25]
  """
  def compresion(lista) do
    # Compresion para listas
    for x <- lista do
      IO.puts("#{x * x}")
    end

    # Compresion para Keyword List
    for {_key, val} <- [one: 1, two: 2, three: 3],  do: IO.puts("#{val}")

    # Compresion para Mapas
    for {k, v} <- %{"a" => "A", "b" => "B"}, do: IO.puts("#{inspect({k, v})}")

    # Compresion para binarios
    for <<c <- "hola">>, do: IO.puts("#{inspect(<<c>>)}")

    # Es posible usar múltiples generadores como iteraciones anidadas.
    for n <- lista, times <- 1..n  do
      String.duplicate("*", times)
    end

    # Para ilustrar mejor la iteración que esta ocurriendo vamos a usar IO.puts para mostrar los dos valores generados.
    for n <- lista, times <- 1..n, do: IO.puts("#{n} - #{times}" )
  end

  @doc """
  filtros

  ## Parametros

  numero -> Integer

  ## Ejemplos

      iex> for x <- 1..10, is_even(x), do: x
      [2, 4, 6, 8, 10]
  """
  def filtros(numero) do
    # Numeros pares
    for x <- 1..numero, is_even(x), do: IO.puts("#{x}")

    # Numeros pares y divisibles entre 3
    for x <- 1..numero, is_even(x), rem(x, 3) == 0, do: IO.puts("#{x}")
  end

  @doc """
  into

  ## Parametros

    N/A

  ## Ejemplos

      iex> for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}
      %{one: 1, three: 3, two: 2}

      iex> for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>
      "Hello"
  """
  def into do
    #for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: IO.puts("#{inspect({k, v})}")
    for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>
  end
end
