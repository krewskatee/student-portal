class ExperiencesController < ApplicationController

  def show
    @experience = Unirest.get("localhost:3000/api/experiences/#{params[:id]}.json").body
  end

  def edit
    @experience = Unirest.get("localhost:3000/api/experiences/#{params[:id]}.json").body
  end

  def update
    Unirest.patch("#{ENV['HOST_NAME']}/api/experiences/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {
                                                                                                                                        :start_date => params[:start_date],
                                                                                                                                        :end_date => params[:end_date],
                                                                                                                                        :job_title => params[:job_title],
                                                                                                                                        :company_name => params[:company_name],
                                                                                                                                        :details => params[:details],
                                                                                                                                        :student_id => params[:student_id]
    end                                                                                                                                  }).body
end