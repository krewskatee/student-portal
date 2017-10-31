class EducationsController < ApplicationController
  def show
    @education = Unirest.get("localhost:3000/api/educations/#{params[:id]}.json").body
  end

  def edit
    @education = Unirest.get("localhost:3000/api/educations/#{params[:id]}.json").body
  end

  def update
    Unirest.patch("#{ENV['HOST_NAME']}/api/educations/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {
                                                                                                                                        :start_date => params[:start_date],
                                                                                                                                        :end_date => params[:end_date],
                                                                                                                                        :degree => params[:degree],
                                                                                                                                        :university => params[:university],
                                                                                                                                        :details => params[:details],
                                                                                                                                        :student_id => params[:student_id]
                                                                                                                                      }).body
    redirect_to "/"
  end
end
