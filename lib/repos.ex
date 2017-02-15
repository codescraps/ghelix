defmodule Ghelix.Repos do
  alias Ghelix.Helper

  @github_api_endpoint Application.fetch_env!(:ghelix, :github_api_endpoint)

  def get(username, reponame), do: get_endpoint(username, reponame) |> Helper.do_call
  def get(username), do: get_endpoint(username) |> Helper.do_call


  defp get_endpoint(username, reponame), do: "#{@github_api_endpoint}/repos/#{username}/#{reponame}"
  defp get_endpoint(username), do: "#{@github_api_endpoint}/users/#{username}/repos"
end
