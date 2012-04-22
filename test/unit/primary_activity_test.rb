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

require 'test_helper'

class PrimaryActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
