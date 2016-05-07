class Tag < ActiveRecord::Base
  belongs_to :task
  has_many :tasktagrelations
end
