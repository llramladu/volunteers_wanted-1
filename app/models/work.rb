class Work < ActiveRecord::Base
  validates_presence_of :description

  belongs_to :user_work_relationships
end
