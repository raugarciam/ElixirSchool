defmodule Basicos do

  @moduledoc """
  Modulo para pruebas de tipos de datos basicos
  """

  @doc """
  Tipo de dato entero
  """
  def entero(numero) do
    numero
  end

  @doc """
  El soporte para números binarios, octales y hexadecimales también viene incluido.
  """
  def binocthex(numero) do
    numero
  end

  @doc """
  En Elixir, los números con coma flotante requieren un decimal después de al menos un dígito; estos tienen una precisión de 64 bits y soportan e para números exponenciales.

  ## Parametros

    - numero: Número con coma flotante

  ## Ejemplos

      iex> 3.14
      3.14
      iex> .14
      ** (SyntaxError) iex:2: syntax error before: '.'
      iex> 1.0e-10
      1.0e-10

  """
  def flotante(numero) do
    numero
  end

  @doc """
    Elixir soporta true y false como booleanos; todo valor es verdadero a excepción de false y nil.

  ## Parametros
    booleano(boolean)

  ## Ejemplos

      iex> true
      true
      iex> false
      false
  """
  def booleanos() do
    true
    false
  end

  @doc """
  Un átomo es una constante cuyo nombre es su valor. Si estás familiarizado con Ruby estos son equivalentes a los Símbolos.
  Los booleanos true y false son también los átomos :true y :false respectivamente.
  Los átomos también son usados para hacer referencia a módulos de las librerias de Erlang, incluyendo las nativas.

  ## Parametros

    N/A

  ## Ejemplos

      iex> :foo
      :foo
      iex> :foo == :bar
      false

      iex> is_atom(true)
      true
      iex> is_boolean(:true)
      true
      iex> :true === true
      true

      Los átomos también son usados para hacer referencia a módulos de las librerias de Erlang, incluyendo las nativas.

      iex> :crypto.strong_rand_bytes 3
      <<23, 104, 108>>
  """
  def atomos() do
    IO.puts(:foo)

    IO.puts(:foo == :bar)

    IO.puts(is_atom(true))
    IO.puts(is_boolean(true))
    IO.puts(:true == :true)

    :crypto.strong_rand_bytes 3
  end

  @doc """
  Las cadenas en Elixir están codificadas en UTF-8 y están encerradas en comillas dobles.

  ## Parametros
    N/A

  ## Ejemplos

      iex> "Hello"
      "Hello"
      iex> "dziękuję"
      "dziękuję"

      Las cadenas soportan saltos de línea y secuencias de escape:

      iex> "foo\nbar"
      "foo\nbar"
  """
  def cadenas() do
    IO.puts("Hola")
    IO.puts("dziękuję")

    IO.puts("foo\nbar")
  end
end
