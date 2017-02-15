defmodule Ghelix.Helper do
  alias Poison.Parser

  def do_call(input), do: input |> HTTPoison.get |> handle_response

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    {:ok, Parser.parse! body}
  end

  def handle_response({_, %{status_code: _, body: body}}) do
    {:error, Parser.parse! body}
  end
end
