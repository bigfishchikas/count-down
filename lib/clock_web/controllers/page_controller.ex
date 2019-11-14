defmodule ClockWeb.PageController do
  use ClockWeb, :controller

  alias Clock.Events

  def index(conn, _params) do
     events = Events.list_future_events()
     render conn, "index.html", events: events
  end
end
