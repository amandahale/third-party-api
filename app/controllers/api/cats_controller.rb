class Api::CatsController < ApplicationController

  def index
    @employees = HTTP
      .headers({
        "Authorization" => "Token token=#{ENV["API_KEY"]}"
      })
      .get("https://api.thecatapi.com/v1/images/search")
      .parse
    render "index.json.jbuilder"
  end

end
