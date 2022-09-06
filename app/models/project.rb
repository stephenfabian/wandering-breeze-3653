class Project < ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def contestant_count
    contestants.count
  end

  def average_contestant_experience_calculator
    counter = [] 
    contestants.years_of_experience / contestant_count.to_f  if contestants.count == 1
    if contestant_count > 1
      contestants.each do |contestant|
        counter << contestant.years_of_experience
      end
      counter.sum / contestant_count.to_f
    end
  end

end