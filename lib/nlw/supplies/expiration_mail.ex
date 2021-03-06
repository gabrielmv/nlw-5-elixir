defmodule Nlw.Supplies.ExpirationMail do
  import Bamboo.Email

  alias Nlw.Supply

  def create(to_email, supplies) do
    new_email(
      to: to_email,
      from: "support@nlw.com",
      subject: "Expiring Supplies",
      text_body: email_text(supplies)
    )
  end

  defp email_text(supplies) do
    initial_text = "----- Expiring Supplies -----\n"

    supplies
    |> Enum.reduce(initial_text, fn supply, text -> text <> supply_string(supply) end)
  end

  defp supply_string(%Supply{description: description, expiration_date: expiration_date, responsible: responsible}) do
    "Description: #{description}, Expiration Date: #{expiration_date}, Responsible: #{responsible}\n"
  end
end
