defmodule Nlw.Welcomer do
  # Recebe nome e idade
  # Se Usuário chamar "beren" e idade "28", recebe mensagem especial
  # Se Usuário for maior de idade ele recebe a mensagem normal
  # Se Usuário for menor, retorna um erro
  # tratar entradas erradas para nome "BeReN", "BeReN      \n"

  def welcome(%{"name" => name,  "age" => age}) do
    age = age |> String.to_integer()

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("beren", 28) do
    {:ok, "Hello Beren"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, age) when age < 18 do
    {:error, "You Shall not pass #{name}"}
  end
end
