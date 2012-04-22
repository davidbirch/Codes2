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

require 'test_helper'

class SubdivisionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
