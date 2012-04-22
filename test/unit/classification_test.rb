# == Schema Information
#
# Table name: classifications
#
#  id          :integer(4)      not null, primary key
#  code        :string(255)
#  description :string(255)
#  group_code  :string(255)
#  group_id    :integer(4)
#  slug        :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'test_helper'

class ClassificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
