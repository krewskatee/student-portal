class SkillsController < ApplicationController
  def index
    @skills = Unirest.get("#{ ENV['HOST_NAME'] }/api/skills.json").body
  end
end
