defmodule RPSWeb.PageController do
  use RPSWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:home, layout: false)
    # render(conn, :home, layout: false)
  end

  def redirect_test(conn, _params) do
    conn
    # |> put_status(301)
    # |> put_resp_header("location", ~p"/")
    # |> send_resp(:found, "")
    |> redirect(to: ~p"/")
  end
end
