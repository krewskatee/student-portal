class StudentsController < ApplicationController
  def index
    @students = Unirest.get("#{ ENV['HOST_NAME'] }/api/students.json").body
  end
end
