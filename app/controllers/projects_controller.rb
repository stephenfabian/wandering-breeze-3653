class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @challenge = Challenge.find_by(id: @project.challenge_id)
  end
end