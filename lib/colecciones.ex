defmodule Colecciones do
  @moduledoc """
  Listas, tuplas, listas de palabras clave y mapas.
  """

  @doc """
  Listas

  Las listas son simples colecciones de valores, las cuales pueden incluir múltiples tipos de datos; las listas pueden incluir valores no únicos.

  ## Parametros

    N/A

  ## Ejemplos

      iex> list = [3.14, :pie, "Apple"]
      [3.14, :pie, "Apple"]
      # Agregar elemento al inicio de la lista (rápido)
      iex> ["π" | list]
      ["π", 3.14, :pie, "Apple"]
      # Agregar elemento al final de la lista (lento)
      iex> list ++ ["Cherry"]
      [3.14, :pie, "Apple", "Cherry"]
  """
  def listas() do
    lista = [3.14, :pie, "Apple"]
    IO.puts("Lista -> #{inspect(lista)}")
    lista2 = ["π" | lista]
    IO.puts("Agregando elemento al inicio de la lista -> #{inspect(lista2)}")
    lista3 = lista2 ++ ["Cherry"]
    IO.puts("Agregando elemento al final de la lista -> #{inspect(lista3)}")
  end

  @ doc """
  Concatenacion Listas

  ## Parametros

  lista1
  lista2

  ## Ejemplos

      iex> [1, 2] ++ [3, 4, 1]
      [1, 2, 3, 4, 1]
  """
  def concatenacionlistas(lista1, lista2) do
    IO.puts("Lista concatenada #{inspect(lista1 ++ lista2)}")
  end

  @ doc """
  Sustraccion Listas

  ## Parametros

  lista1
  lista2

  ## Ejemplos

      iex> ["foo", :bar, 42] -- [42, "bar"]
      ["foo", :bar]

      Tenga en cuenta los valores duplicados. Para cada elemento de la lista derecha, la primera ocurrencia se retira de la lista izquierda.

      iex> [1,2,2,3,2,3] -- [1,2,3,2]
      [2, 3]

      La sustracción de listas utiliza comparación estricta para coincidir los valores. Por Ejemplo:

      iex> [2] -- [2.0]
      [2]
      iex> [2.0] -- [2.0]
      []
  """
  def sustraccionlistas(lista1, lista2) do
    IO.puts("Lista concatenada #{inspect(lista1 -- lista2)}")
  end

  @doc """
  Cabeza/Cola
  Cuando usamos listas es común trabajar con la cabeza y la cola. La cabeza es el primer elemento de la lista, mientras que la cola es una lista que contiene a los elementos restantes. Elixir ofrece dos funciones útiles, hd y tl, para trabajar con estas partes. hd es la abreviatura de “head” (cabeza en inglés), y tl es la abreviatura de “tail” (cola).

  ## Parametros

    N/A

  ## Ejemplos

      iex> hd [1, 2, 3]
      1
      iex> tl [1, 2, 3]
      [2, 3]

      Además de las funciones anteriormente mencionadas, puedes hacer uso de la coincidencia de patrones y del operador cons | para partir una lista en cabeza y cola.

      iex> [head | tail] = [3.14, :pie, "Apple"]
      [3.14, :pie, "Apple"]
      iex> head
      3.14
      iex> tail
      [:pie, "Apple"]
  """

  def cabezacola() do
    IO.puts("Head lista [1, 2, 3] -> #{hd [1, 2, 3]}")
    IO.puts("Tail lista [1, 2, 3] -> #{inspect(tl [1, 2, 3])}")

    [head | tail] = [3.14, :pie, "Apple"]

    IO.puts("Head [3.14, :pie,\"Apple\"] -> #{head}")
    IO.puts("Tail [3.14, :pie,\"Apple\"] -> #{inspect(tail)}")
  end

  @doc """
  Tuplas

  Las tuplas son similares a las listas, pero son almacenadas de manera contigua en la memoria.

  ## Parametros

    N/A

  ## Ejemplos

      iex> {3.14, :pie, "Apple"}
      {3.14, :pie, "Apple"}
  """
  def tuplas() do
    IO.puts("Tupla -> #{inspect({3.14, :pie, "Apple"})}")
  end

  @doc """
  Mapas

  En Elixir, los mapas son el tipo de datos utilizado por excelencia para almacenar pares de clave/valor.

  ## Parametros

    N/A

  ## Ejemplos

      iex> map = %{:foo => "bar", "hello" => :world}
      %{:foo => "bar", "hello" => :world}
      iex> map[:foo]
      "bar"
      iex> map["hello"]
      :world
  """
  def mapas() do
    map = %{:foo => "bar", "hello" => :world}

    IO.puts(map[:foo])
    IO.puts(map["hello"])

    key = "hello"
    IO.puts("#{inspect(%{key => "world"})}")

    IO.puts("#{inspect(%{:foo => "bar", :foo => "hello world"})}")

    map2 = %{hello: "world"}

    Map.put(map2, :foo, "baz")
  end
end
