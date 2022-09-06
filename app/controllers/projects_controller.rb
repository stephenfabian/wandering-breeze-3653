class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @challenge = Challenge.find_by(id: @project.challenge_id)
    # @contestant_count = @project.contestants.count
    @count_of_contestants = @project.contestant_count
    @average_contestant_experience = @project.average_contestant_experience_calculator
  end
end