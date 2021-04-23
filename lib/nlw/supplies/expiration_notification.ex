defmodule Nlw.Supplies.ExpirationNotification do
  alias Nlw.Mailer
  alias Nlw.Supplies.{ExpirationMail, GetByExpiration}

  def send() do
    data = GetByExpiration.call()

    Enum.each(data, fn {to_email, supplies} ->
      to_email
      |> ExpirationMail.create(supplies)
      |> Mailer.deliver_later!()
    end)
  end
end
