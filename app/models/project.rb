class Project < ActiveRecord::Base

  validates :title, :technologies, :description, presence: true
  belongs_to :user
end
