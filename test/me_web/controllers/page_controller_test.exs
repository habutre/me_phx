defmodule MeWeb.PageControllerTest do
  use MeWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Rogério&#39;s HomePage"
  end
end
