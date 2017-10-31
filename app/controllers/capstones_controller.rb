class CapstonesController < ApplicationController

  def show
    @capstone = Unirest.get("localhost:3000/api/capstones/#{params[:id]}.json").body
  end

  def edit
    @capstone = Unirest.get("localhost:3000/api/capstones/#{params[:id]}.json").body
  end

  def update
    Unirest.patch("#{ENV['HOST_NAME']}/api/captones/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {:name => params[:name], :description => params[:description], :url => params[:url], :screenshot => params[:screenshot], :student_id => params[:student_id]}).body
    redirect_to "/"
  end

end
