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

require 'test_helper'

class DivisionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
