# == Schema Information
#
# Table name: divisions
#
#  id          :integer(4)      not null, primary key
#  code        :string(255)
#  description :string(255)
#  overview    :string(255)
#  slug        :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Division < ActiveRecord::Base
  
  has_many :subdivisions
  
  extend FriendlyId
  friendly_id :description, use: :slugged
  
end
