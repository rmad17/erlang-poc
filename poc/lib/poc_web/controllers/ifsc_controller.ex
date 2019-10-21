
defmodule PocWeb.IfscController do
  use PocWeb, :controller

  def save_data(data) do
  end

  def index(conn, _params) do
    url = "https://ifsc.razorpay.com/" <> _params["ifsc_code"]
    response = HTTPoison.get!(url)
    body = Poison.decode!(response.body)
    Poc.Repo.insert(%Poc.IfscDetail{"ifsc": body["IFSC"], "bank": body["BANKCODE"], "branch": body["BRANCH"], "address": body["ADDRESS"]})
    conn
    |> json(body)
  end

end
