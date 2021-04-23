defmodule Nlw.Supplies.ExpirationNotification do
  alias Nlw.Mailer
  alias Nlw.Supplies.{ExpirationMail, GetByExpiration}

  def send() do
    GetByExpiration.call()
    |> Task.async_stream(fn {to_email, supplies} -> send_email(to_email, supplies) end)
    |> Stream.run()
  end

  defp send_email(to_email, supplies) do
    to_email
    |> ExpirationMail.create(supplies)
    |> Mailer.deliver_later!()
  end
end
