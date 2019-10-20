
defmodule PocWeb.IfscController do
  use PocWeb, :controller

  def index(conn, _params) do
    url = "https://ifsc.razorpay.com/HDFC0CAGSBK"
    response = HTTPoison.get!(url)
    # body = Poison.decode!(response.body)
    conn
    |> send_resp(response.status_code, response.body)
  end
end
