class Todone < ActiveRecord::Base
  validates :tasklist, presence: true
end
