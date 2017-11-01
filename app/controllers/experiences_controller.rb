class ExperiencesController < ApplicationController

  HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}", "Accept" => "application/json" }

  def index
    @experiences = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/experiences.json", headers: HEADERS).body
  end

  def show
    @experience = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/experiences/#{params[:id]}.json", headers: HEADERS).body

  end

  def edit
    @experience = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/experiences/#{params[:id]}.json", headers: HEADERS).body
  end

  def update

    Unirest.patch("https://crypto-currents-squidshack.herokuapp.com/api/v1/experiences/#{params[:id]}.json", 
                                                                                                      headers: HEADERS, parameters: {
                                                                                                                                        :start_date => params[:start_date],
                                                                                                                                        :end_date => params[:end_date],
                                                                                                                                        :job_title => params[:job_title],
                                                                                                                                        :company_name => params[:company_name],
                                                                                                                                        :details => params[:details],
                                                                                                                                        :student_id => params[:student_id],
                                                                                                                                        :student_first_name => params[:student_first_name],
                                                                                                                                        :student_last_name => params[:student_last_name]
                                                                                                                                        })
    redirect_to '/experiences'
    
    end                                                                                                                                  
end
