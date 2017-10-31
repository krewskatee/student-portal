class SkillsController < ApplicationController

  def index
    @skills = Unirest.get("#{ ENV['HOST_NAME'] }/api/skills.json").body


  def show
    @skill = Unirest.get("localhost:3000/api/skills/#{params[:id]}.json").body
  end

  def edit
    @skill = Unirest.get("localhost:3000/api/skills/#{params[:id]}.json").body
  end

  def update
  Unirest.patch("#{ENV['HOST_NAME']}/api/skills/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {
                                                                                                                                  :skill_name => params[:skill_name],
                                                                                                                                  :student_id => params[:student_id]
                                                                                                                                }).body


  end
end
