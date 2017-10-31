class ExperiencesController < ApplicationController
  def index
    @experiences = Unirest.get("#{ ENV['HOST_NAME'] }/api/experiences.json").body
  end
end
