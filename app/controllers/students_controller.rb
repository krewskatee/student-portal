class StudentsController < ApplicationController

  HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}", "Accept" => "application/json" }

  def index
    @students = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v2/students.json").body
  end

  def show
    @student = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v2/students/#{params[:id]}.json", headers: HEADERS).body
    @educations = @student['educations']
    @skills = @student['skills']
    @experiences = @student['experiences']
    @capstones = @student['capstone']
  end

  def edit
    @student = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v2/students/#{params[:id]}.json", headers: HEADERS).body
  end

  def update

    Unirest.patch("https://crypto-currents-squidshack.herokuapp.com/api/v2/students/#{params[:id]}.json", headers: HEADERS, parameters: {
                                                                                                                                first_name: params[:first_name],
                                                                                                                                last_name: params[:last_name],
                                                                                                                                email: params[:email],
                                                                                                                                phone_number: params[:phone_number],
                                                                                                                                short_bio: params[:short_bio],
                                                                                                                                linkedin: params[:linkedin],
                                                                                                                                twitter: params[:twitter],
                                                                                                                                personal_blog: params[:personal_blog],
                                                                                                                                online_resume: params[:online_resume],
                                                                                                                                github: params[:github],
                                                                                                                                photo: params[:photo],
                                                                                                                                id: params[:id]
                                                                                                                              })
  end


end
