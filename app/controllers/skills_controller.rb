class SkillsController < ApplicationController
  HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}"}



  def index
    @skills = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/students.json", 
      headers: HEADERS).body
  end


  def show
    @skill = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/vi/skills/#{params[:id]}.json", headers: HEADERS).body
  end

  def edit
    @skill = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/vi/skills/#{params[:id]}.json", headers: HEADERS).body
  end

  def update
  Unirest.patch("https://crypto-currents-squidshack.herokuapp.com//api/skills/#{params[:id]}.json", 
                                                  headers: HEADERS 
                                                   parameters: {
                                                                  :skill_name => params[:skill_name],
                                                                  :student_id => params[:student_id]
                                                                  }).body


  end
end
