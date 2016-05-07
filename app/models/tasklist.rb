class Tasklist < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  # validates :name, precence: true, uniqueness: true
end
