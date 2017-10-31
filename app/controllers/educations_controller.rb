class EducationsController < ApplicationController
  def index
    @educations = Unirest.get("#{ ENV['HOST_NAME'] }/api/educations.json").body
  end
end
