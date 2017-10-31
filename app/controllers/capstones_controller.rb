class CapstonesController < ApplicationController
  def index
    @capstones = Unirest.get("#{ ENV['HOST_NAME'] }/api/capstones.json").body
  end
end
