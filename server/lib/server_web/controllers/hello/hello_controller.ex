defmodule ServerWeb.HelloController do
  use ServerWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def hello(conn, %{"name" => name}) do
    render(conn, :hello, name: name)
  end
end
