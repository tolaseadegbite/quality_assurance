# == Schema Information
#
# Table name: evaluations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Evaluation < ApplicationRecord
    has_many :questions, dependent: :destroy
    accepts_nested_attributes_for :questions, allow_destroy: true
end
