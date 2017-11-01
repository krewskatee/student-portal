class EducationsController < ApplicationController
  HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}", "Accept" => "application/json" }

  def index
    @educations = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/educations.json", headers: HEADERS).body
  end

  def show
    @education = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/educations/#{params[:id]}.json", headers: HEADERS).body
  end

  def edit
    @education = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/educations/#{params[:id]}.json", headers: HEADERS).body
  end

  def update

    Unirest.patch("https://crypto-currents-squidshack.herokuapp.com/api/v1/educations/#{params[:id]}.json", headers: HEADERS, parameters: {
                                                                                                            :start_date => params[:start_date],
                                                                                                            :end_date => params[:end_date],
                                                                                                            :degree => params[:degree],
                                                                                                            :university => params[:university],
                                                                                                            :details => params[:details],
                                                                                                            :student_id => params[:student_id],
                                                                                                            :id => params[:id]
                                                                                                          })
    redirect_to "/educations"
  end
end
