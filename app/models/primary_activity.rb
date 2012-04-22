# == Schema Information
#
# Table name: primary_activities
#
#  id                  :integer(4)      not null, primary key
#  description         :string(255)
#  classification_code :string(255)
#  classification_id   :integer(4)
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#

class PrimaryActivity < ActiveRecord::Base
  
  belongs_to :classification
  
end
