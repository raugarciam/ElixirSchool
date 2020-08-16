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
end
