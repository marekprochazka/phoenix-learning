defmodule RPSWeb.HelloController do
  use RPSWeb, :controller
  import Plug.Conn
  def index(conn, _params) do
    render(conn, :index)
  end

  def hello(conn, %{"name" => name}) do
    # render(conn, :hello, name: name)
    conn
    |> assign(:name, name)
    |> assign(:greeting, "Constant hello")
    |> render(:hello)

  end
end
