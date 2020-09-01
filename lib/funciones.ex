defmodule Funciones do
  @moduledoc """
  En Elixir y en muchos lenguajes funcionales, las funciones son ciudadanos de primera clase. Vamos a aprender acerca de los tipos de funciones en Elixir, qué los hace diferentes, y cómo usarlos.
  """

  @doc """
  funciones anonimas

  ## Parametros

    N/A

  ## Ejemplos

      iex> sum = fn (a, b) -> a + b end
      iex> sum.(2, 3)
      5
  """
  def suma(n1, n2) do
    sum = fn (n1, n2) -> n1 + n2 end
    IO.puts("#{sum.(n1, n2)}")
  end

  @doc """
  atajo

  ## Parametros
    n1 -> Integer
    n2 -> Integer

    ## Ejemplos

        iex> sum = &(&1 + &2)
        iex> sum.(2, 3)
        5
  """
  def sumaatajo(n1, n2) do
    sum = &(&1 + &2)
    IO.puts("#{sum.(n1, n2)}")
  end

  @doc """
  concidenciapatrones

  ## Parametros

    N/A

  ## Ejemplos

      iex> handle_result = fn
      ...>   {:ok, result} -> IO.puts "Handling result..."
      ...>   {:ok, _} -> IO.puts "This would be never run as previous will be matched beforehand."
      ...>   {:error} -> IO.puts "An error has occurred!"
      ...> end

      iex> some_result = 1
      iex> handle_result.({:ok, some_result})
      Handling result...

      iex> handle_result.({:error})
      An error has occurred!
  """
  def coincidenciapatrones() do
    handle_result = fn {:ok, result} -> IO.puts("Handling Result")
                    {:ok, _} -> IO.puts("This would be never run as previous will be matched beforehand.")
                    {:error} -> IO.puts("An error as ocurred") end
    some_result = 1
    handle_result.({:ok, some_result})
    handle_result.({:error})
  end

  @doc """
  Funciones con Nombre


  Podemos definir funciones con nombre para así poder referirnos a ellas luego. Estas funciones con nombre son definidas con la palabra clave def dentro de un módulo. Vamos a aprender más acerca de los módulos en las siguientes lecciones, por ahora nos enfocaremos solamente en las funciones con nombre.

  Las funciones definidas dentro de un módulo están disponibles para ser usadas por otros módulos, esto es particularmente útil para construir bloques en Elixir.

  ## Parametros

    N/A

  ## Ejemplos

        def hello(name) do
          "Hello, " <> name
        end
  """
  def hello(nombre) do
    IO.puts("Hola #{nombre}")
  end

  @doc """
    Funciones en una sola linea

  ## Parametros

    nombre -> String

  ## Ejemplos

      def hello(name), do: "Hello, " <> name
  """
  def saludo(nombre), do: IO.puts("Hola #{nombre}")

  @doc """
  Recursion

  Ejemplo de recursion con coincidencia de patrones

  ## Parametros

  N/A

  ## Ejemplos

      def of([]), do: 0
      def of([_ | tail]), do: 1 + of(tail)
  """
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)

  @doc """
  Aridad

  Anteriormente mencionamos que las funciones son nombradas por la combinación de nombre y aridad (cantidad de argumentos). Esto significa que puedes hacer cosas como.

  ## Parametros

    N/A

  ## Ejemplos

      def hello(), do: "Hello, anonymous person!"   # hello/0
      def hello(name), do: "Hello, " <> name        # hello/1
      def hello(name1, name2), do: "Hello, name1 and name2"
  """
  def hola(), do: "Hello, anonymous person!"   # hello/0
  def hola(name), do: "Hello, " <> name        # hello/1
  def hola(name1, name2), do: "Hello, #{name1} and #{name2}"

  @doc """
  Funciones y coincidencia de patrones

  Detrás de escenas, las funciones se ajustan a el numero de argumentos con los que se llaman.

  Digamos que necesitamos una función para aceptar un mapa, pero solo nos interesa utilizar una llave en particular

  ## Parametros

    N/A

  ## Ejemplos

      def holaCoincidencia(%{name: person_name}) do
      IO.puts "Hello, " <> person_name
  end
  """
  def holaCoincidencia(%{nombre: nombre_persona}) do
    IO.puts("Hola, #{nombre_persona}")
  end

  @doc """
  Funciones privadas

  Cuando no queremos que otros módulos accedan a una función especifica, podemos hacer que la función sea privada. Las funciones privadas solo pueden ser llamadas desde su propio modulo. Las definimos en Elixir con defp.

  ## Parametros

    nombtre -> String

  ## Ejemplos

      def hello(name), do: phrase() <> name
      defp phrase, do: "Hello, "
  """
  def holaPrivada(nombre),  do: IO.puts("#{frase(nombre)}")

  defp frase(nombre), do: "Hola, " <> nombre
end
