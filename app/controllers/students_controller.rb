class StudentsController < ApplicationController
  def index
    @students = Unirest.get("#{ ENV['HOST_NAME'] }/api/students.json").body
  end

  def show
    @student = Unirest.get("localhost:3000/api/students/#{params[:id]}.json").body
  end

  def edit
      @student = Unirest.get("localhost:3000/api/students/#{params[:id]}.json").body
  end

  def update
    Unirest.patch("#{ENV['HOST_NAME']}/api/skills/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {
                                                                                                                                  :first_name => params[:first_name],
                                                                                                                                  :last_name => params[:last_name],
                                                                                                                                  :email => params[:email],
                                                                                                                                  :phone_number => params[:phone_number],
                                                                                                                                  :short_bio => params[:short_bio],
                                                                                                                                  :linkedin => params[:linkedin],
                                                                                                                                  :twitter => params[:twitter],
                                                                                                                                  :personal_blog => params[:personal_blog],
                                                                                                                                  :online_resume => params[:online_resume],
                                                                                                                                  :github => params[:github],
                                                                                                                                  :photo => params[:photo]
                                                                                                                                }).body

  end

end
