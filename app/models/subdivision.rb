# == Schema Information
#
# Table name: subdivisions
#
#  id            :integer(4)      not null, primary key
#  code          :string(255)
#  description   :string(255)
#  division_code :string(255)
#  division_id   :integer(4)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Subdivision < ActiveRecord::Base
  
  belongs_to :division
  has_many :groups
  
end
