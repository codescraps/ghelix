defmodule Ghelix.Users do
  alias Ghelix.Helper

  @github_api_endpoint Application.fetch_env!(:ghelix, :github_api_endpoint)

  def get(username), do: get_endpoint(username) |> Helper.do_call
  def get, do: get_endpoint |> Helper.do_call

  defp get_endpoint(username), do: "#{@github_api_endpoint}/users/#{username}"
  defp get_endpoint, do: "#{@github_api_endpoint}/users"
end
