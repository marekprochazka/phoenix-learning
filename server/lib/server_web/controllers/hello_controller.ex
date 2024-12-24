defmodule ServerWeb.HelloController do
  use ServerWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
