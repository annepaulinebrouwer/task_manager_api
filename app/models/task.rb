class Task < ActiveRecord::Base
  belongs_to :tasklist
  has_many :tags
end
