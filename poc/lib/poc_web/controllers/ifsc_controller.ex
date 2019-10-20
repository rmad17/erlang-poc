
defmodule PocWeb.IfscController do
  use PocWeb, :controller

  def index(conn, _params) do
    url = "https://ifsc.razorpay.com/" <> _params["ifsc_code"]
    response = HTTPoison.get!(url)
    body = Poison.decode!(response.body)
    conn
    |> json(body)
  end
end
