defmodule Enumeraciones do
  @moduledoc """
  Un conjunto de algoritmos para hacer enumeración sobre colecciones.

  El módulo Enum incluye más de 70 funciones para trabajar con colecciones. Todas las colecciones que aprendiste en la lección anterior, a exepción de las tuplas, son enumberables.
  """

  @doc """
  all?

  Cuando usas all?/2, y muchas de las funciones de Enum, proveemos una función para aplicar a los elementos de nuestra colección. En el caso de all?/2, la colección entera debe ser evaluada a true, en otro caso false será retornado.

  ## Parametros

    N/A

  ## Ejemplos

      iex> Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
      false
      iex> Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
      true
  """
  def all() do
    Enum.all?(["foo", "bar", "hello"], fn (s) -> String.length(s) == 3 end)
  end

  @doc """
  any?
  Diferente a lo anterior, any? retornará true si al menos un elemento es evaluado a true.

  ## Parametros

    N/A

  ## Ejemplos

      iex> Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end)
      true
  """
  def any() do
    Enum.any?(["foo", "bar", "hello"], fn (s) -> String.length(s) == 5  end)
  end

  @doc """
  chunk_every
  Si necesitas dividir tu colección en pequeños grupos, chunk_every/2 es la función que probablemente estás buscando.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
      [[1, 2], [3, 4], [5, 6]]
  """
  def chunkevery() do
    Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
  end

  @doc """
  chunk_by

  Si necesitamos agrupar una colección basándose en algo diferente al tamaño, podemos usar la función chunk_by/2. Esta función recibe un enumerable como parámetro y una función, cada vez que la respuesta de esa función cambia un nuevo grupo es creado y continúa con la creación del siguiente.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end)
      [["one", "two"], ["three"], ["four", "five"]]
      iex> Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end)
      [["one", "two"], ["three"], ["four", "five"], ["six"]]
  """
  def chunkby() do
    IO.puts("#{inspect(Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x)-> String.length(x) end))}")
    IO.puts("#{inspect(Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x)-> String.length(x) end))}")
  end

  @doc """
  map_every

  Algunas veces hacer chunk a una colección no es suficiente para lograr lo que necesitas. Si este es el caso, map_every/3 puede ser muy útil para ejecutarse cada n elementos, siempre se ejecuta en el primero.

  ## Parametros

  N/A

  ## Ejemplos

      # Aplica la funcion cada 3 elementos
      iex> Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)
      [1001, 2, 3, 1004, 5, 6, 1007, 8]
  """
  def mapevery() do
    Enum.map_every([1, 2, 3, 4, 5 ,6 ,7 ,8], 3, fn x -> x + 1000 end)
  end

  @doc """
  each

  Puede ser necesario iterar sobre una colección sin producir un nuevo valor, para este caso podemos usar each/2.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)
      one
      two
      three
      :ok
  """
  def each() do
    Enum.each(["one", "two", "three"], fn s -> IO.puts(s)  end)
  end

  @doc """
  map

  Para aplicar una función a cada elemento y producir una nueva colección revisa la función map/2.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)
      [-1, 0, 1, 2]
  """
  def mapa() do
    Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)
  end

  @doc """
  min

  min/1 encuentra el mínimo valor de la colección.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.min([5, 3, 0, -1])
      -1
  """
  def minimo() do
    Enum.min([5, 3, 0, -1])
  end

  @doc """
  max

  max/1 retorna el máximo valor de la colección.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.max([5, 3, 0, -1])
      5
  """
  def maximo() do
    Enum.max([5, 3, 0, -1])
  end

  @doc """
  filter

  La función filter/2 nos permite filtrar una colección que incluya solamente aquellos elementos que evaluan a true utilizando la función provista.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)
      [2, 4]
  """
  def filtro() do
    Enum.filter([1, 2, 3, 4], fn (x) -> rem(x, 2) == 0 end)
  end

  @doc """
  reduce

  Con reduce/3 podemos transformar nuestra colección a un único valor. Para hacer esto aplicamos un acumulador opcional (10 en este ejemplo) que será pasado a nuestra función; si no se provee un acumulador, el primer valor en el enumerable es usado.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end)
      16

      iex> Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end)
      6

      iex> Enum.reduce(["a","b","c"], "1", fn(x,acc) -> x <> acc end)
      "cba1"
  """
  def reducir() do
    IO.puts("#{Enum.reduce([1, 2, 3], 10, fn(x, acc)-> x + acc end)}")
    IO.puts("#{Enum.reduce([1, 2, 3], fn(x, acc)-> x + acc end)}")
    IO.puts("#{Enum.reduce(["a", "b", "c"], "1", fn(x, acc)-> x <> acc end)}")
  end

  @doc """
  sort

  Ordenar nuestras colecciones se hace fácil no con una, sino dos funciones de ordenación. sort/1 utiliza el ordenamiento de términos de Erlang para determinar el orden de ordenación.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.sort([5, 6, 1, 3, -1, 4])
      [-1, 1, 3, 4, 5, 6]
  """
  def ordenar() do
    Enum.sort([5, 6, 1, 3, -1, 4])
  end

  @doc """
  uniq_by

  Podemos usar uniq_by/2 para eliminar duplicados de nuestras colecciones.

  ## Parametros

  N/A

  ## Ejemplos

      iex> Enum.uniq_by([1, 2, 3, 2, 1, 1, 1, 1, 1], fn x -> x end)
      [1, 2, 3]
  """
  def uniq() do
    Enum.uniq_by([1, 2, 3, 2, 1, 1, 1, 1, 1], fn x -> x  end)
  end
end
