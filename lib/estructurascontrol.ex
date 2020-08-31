defmodule EstructurasControl do
  @moduledoc """
    Estructuras de control disponibles en Elixir.
  """
  import Integer
  @doc """
    if / unless

    Ambas funcionan de la misma forma pero están definidos como macros, no son construcciones propias del lenguaje.

    Debería tenerse en cuenta que en Elixir, los únicos valores falsos son nil y el booleano false.

    ## Parametros
      Cadena -> String

    ## Ejemplos

        iex> if String.valid?("Hello") do
        ...>   "Valid string!"
        ...> else
        ...>   "Invalid string."
        ...> end
        "Valid string!"
  """
  def controlif(cadena) do
    if String.valid?(cadena) do
      IO.puts("Cadena Valida")
    else
      IO.puts("Cadena Invalida")
    end

    #Usar unless/2 es como if/2 solo que trabaja en forma inversa
    unless is_integer(cadena) do
      IO.puts("No es un entero")
    end
  end

  @doc """
    case

    Si es necesario buscar una coincidencia en múltiples patrones podemos usar case

    La variable _ es una inclusión importante en la declaración case. Sin esto, cuando no se encuentre una coincidencia, se lanzará un error.

    ## Parametros

      valor

    ## Ejemplos

        iex> case {:ok, "Hello World"} do
        ...>   {:ok, result} -> result
        ...>   {:error} -> "Uh oh!"
        ...>   _ -> "Catch all"
        ...> end
        "Hello World"

        Considera _ como el else que coincidirá con “todo lo demás”. Ya que case se basa en la coincidencia de patrones, se aplican las mismas reglas y restricciones. Si intentas coincidir con variables existentes debes usar el operador pin ^

        iex> pie = 3.14
        3.14
        iex> case "cherry pie" do
        ...>   ^pie -> "Not so tasty"
        ...>   pie -> "I bet pie is tasty"
        ...> end
        "I bet cherry pie is tasty"

        Otra característica interesante de case es que soporta cláusulas de guardia:

        iex> case {1, 2, 3} do
        ...>   {1, x, 3} when x > 0 ->
        ...>     "Will match"
        ...>   _ ->
        ...>     "Won't match"
        ...> end
        "Will match"
  """
  def casecontrol(cadena) do
    case {:ok, cadena} do
      {:ok, result} -> IO.puts("#{result}")
      {:error} -> IO.puts("Uh oh")
      _ -> IO.puts("Catch all")
    end

    case :even do
      :odd -> "Odd"
      _ -> "Not odd"
    end

    pie = 3.1416

    case "cherry pie" do
      ^pie -> IO.puts("Not so tasty")
      pie -> IO.puts("I bet #{pie} is tasty")
    end

    case {1, 2, 3} do
      {1, x, 3} when x > 0 -> IO.puts("Seran iguales")
      _ -> IO.puts("Seran diferentes")
    end
  end

  @doc """
    cond

    Cuando necesitamos coincidencias con condiciones, y no valores, podemos cambiar a cond; esto es parecido a else if o elsif en otros lenguajes.

    ## Parametros

      N/A

    ## Ejemplos

        iex> cond do
        ...>   2 + 2 == 5 ->
        ...>     "This will not be true"
        ...>   2 * 2 == 3 ->
        ...>     "Nor this"
        ...>   1 + 1 == 2 ->
        ...>     "But this will"
        ...> end
        "But this will"
  """
  def controlcond do
    cond do
      2 + 2 == 5 -> IO.puts("2 + 2 == 5 Esto no sera verdadero")
      2 * 2 == 3 -> IO.puts("2 * 2 == 3 Tampoco esto")
      1 + 1 == 2 -> IO.puts("1 + 1 == 2 Esto sera verdadero")
    end
  end

  @doc """
    with

    La forma especial with/1 es útil cuando se pueda usar un case/2 anidado o en situaciones que no puedan ser encadenadas limpiamente. La expresión with/1 está compuesta de palabras clave, generadores y, finalmente una expresión.
    A partir Elixir 1.3 las sentencias with/1 soportan else.
    ## Parametros

      N/A

    ## Ejemplos

        iex> user = %{first: "Sean", last: "Callan"}
        %{first: "Sean", last: "Callan"}
        iex> with {:ok, first} <- Map.fetch(user, :first),
        ...>      {:ok, last} <- Map.fetch(user, :last),
        ...>      do: last <> ", " <> first
        "Callan, Sean"

        import Integer

        m = %{a: 1, c: 3}

        a =
          with {:ok, number} <- Map.fetch(m, :a),
            true <- is_even(number) do
              IO.puts "number divided by 2 is div(number, 2)"
              :even
          else
            :error ->
              IO.puts("We don't have this item in map")
              :error

            _ ->
              IO.puts("It is odd")
              :odd
          end
  """
  def controlwith do
    user = %{first: "Raul", last: "Garcia"}
    with {:ok, first} <- Map.fetch(user, :first),
         {:ok, last} <- Map.fetch(user, :last),
         do: last <> ", " <> first

    m = %{a: 1, c: 3}
    a =
      with {:ok, number} <- Map.fetch(m, :a), true <- is_even(number)  do
        IO.puts("#{number} dividido entre 2  es #{div(number, 2)}")
        :even
      else
        :error -> IO.puts("No existe ese numero en el mapa")

      _ -> IO.puts("It is odd")
        :odd
      end
  end
end
