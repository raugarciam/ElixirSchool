defmodule FechaHora do
  @moduledoc """
  Elixir tiene algunos módulos que trabajan con fecha y tiempo
  """
  @doc """
  tiempo
  """
  def tiempo() do
    IO.puts("#{Time.utc_now()}")
    t = Time.utc_now()
    IO.puts("#{t.hour}:#{t.minute}:#{t.second}")
  end

  @doc """
  Date

  ## Parametros

    N/A

  ## Ejemplos

      iex> Date.utc_today

      ~D[2028-10-21]
  """
  def date() do
    fecha = Date.utc_today()
    IO.puts("Fecha de hoy: #{fecha}")
    IO.puts("Dia: #{fecha.day}")
    IO.puts("Mes: #{fecha.month}")
    IO.puts("Anio: #{fecha.year}")
    IO.puts("Dia de la semana: #{Date.day_of_week(fecha)}")
    IO.puts("Fecha Hora: #{NaiveDateTime.utc_now}")
  end
end
