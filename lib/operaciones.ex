defmodule Operaciones do
  @moduledoc """
  Elixir soporta los operadores básicos +, -, *, y / como era de esperarse. Es importante resaltar que / siempre retornará un número con coma flotante.
  """

  @doc """
  Suma de numeros.

  ## Parametros:
    numero1: entero
    numero2: entero

  ## Ejemplos

      iex> 2 + 2
      4
  """
  def suma(numero1, numero2) do
    numero1 + numero2
  end

  @doc """
  Resta de numeros

  ## Parametros
    numero1
    numero2

  ## Ejemplos

      iex> 2 - 1
      1
  """
  def resta(numero1, numero2) do
    numero1 - numero2
  end

  @doc """
  Multiplicacion de numeros

  ## Parametros

    numero1
    numero2

  ## Ejemplos

      iex> 2 * 5
      10
  """
  def multiplicacion(numero1, numero2) do
    numero1 * numero2
  end

  @doc """
  Division de numeros, se valida que el dividendo no sea cero.

  ## Parametros

    numero1
    numero2

  ## Ejemplos

      iex> 10 / 5
      2.0
  """
  def division(numero1, numero2) do
    if numero2 === 0 do
      IO.puts("la divison entre cero no esta permitida")
    else
      IO.puts("Division: #{numero1 / numero2}")
      IO.puts("Division entera: #{div(numero1, numero2)}")
      IO.puts("Residuo de la division: #{rem(numero1, numero2)}")
    end
  end

  @doc """
  Booleanas
  Elixir provee los operadores booleanos: ||, &&, y !, que soportan cualquier tipo de dato

  ## Parametros

    N/A

  ## Ejemplos

      iex> -20 || true
      -20
      iex> false || 42
      42

      iex> 42 && true
      true
      iex> 42 && nil
      nil

      iex> !42
      false
      iex> !false
      true
  """
  def booleanas() do
    IO.puts("-20 || true -> #{-20 || true}")
    IO.puts("false || 42 -> #{false || 42}")
    IO.puts("42 && true -> #{42 && true}")
    IO.puts("42 && nil -> #{42 && nil}")
    IO.puts("!42 -> #{!42}")
    IO.puts("!false -> #{!false}")
  end

  @doc """
  Comparacion

  Elixir viene con todos los operadores de comparación a los que estamos acostumbrados: ==, !=, ===, !==, <=, >=, < y >.

  ## Parametros

    N/A

  ## Ejemplos

      iex> 1 > 2
      false
      iex> 1 != 2
      true
      iex> 2 == 2
      true
      iex> 2 <= 3
      true

      Para comparación estricta de enteros y flotantes usamos ===:

      iex> 2 == 2.0
      true
      iex> 2 === 2.0
      false
  """
  def comparacion() do
    IO.puts("1 > 2 -> #{1 > 2}")
    IO.puts("1 != 2 -> #{1 != 2}")
    IO.puts("2 == 2 -> #{2 == 2}")
    IO.puts("2 <= 3 -> #{2 <= 3}")
    IO.puts("2 == 2.0 -> #{2 == 2.0}")
    IO.puts("2 === 2.0 -> #{2 === 2.0}")
    IO.puts(":hello > 99 #{:hello > 99}")
    IO.puts("{:hello, :world} > [1, 2, 3] -> #{{:hello, :world} > [1, 2, 3]}")
  end

  @doc """
  Interpolacion de cadenas

  ## Parametros

    cadena

  ## Ejemplos

      iex> name = "Sean"
      iex> "Hello {name}"
      "Hello Sean"
  """
  def interpolacion(cadena) do
    IO.puts("Hola #{cadena}")
  end

  @doc """
  Concatenacion

  La concatenación de cadenas usa el operador <>

  ## Parametros

  cadena

  ## Ejemplo

      iex> name = "Sean"
      iex> "Hello " <> name
      "Hello Sean"
  """
  def concatenacion(cadena) do
    IO.puts("Hola " <> cadena)
  end
end
