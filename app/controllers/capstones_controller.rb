class CapstonesController < ApplicationController
  HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}", "Accept" => "application/json" }

  def index
    @capstones = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/capstones.json", headers: HEADERS).body
  end

  def show
    @capstone = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/capstones/#{params[:id]}.json", headers: HEADERS).body
  end

  def edit
    @capstone = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/capstones/#{params[:id]}.json", headers: HEADERS).body
  end

  def update
    Unirest.patch("https://crypto-currents-squidshack.herokuapp.com/api/v1/capstones/#{params[:id]}.json", headers: HEADERS, parameters: {:name => params[:name], :description => params[:description], :url => params[:url], :screenshot => params[:screenshot], :student_id => params[:student_id]}).body
    redirect_to "/capstones"
  end

end
