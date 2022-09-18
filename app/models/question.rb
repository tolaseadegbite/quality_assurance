# == Schema Information
#
# Table name: questions
#
#  id            :bigint           not null, primary key
#  name          :string
#  question_type :integer
#  required      :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  evaluation_id :bigint           not null
#
# Indexes
#
#  index_questions_on_evaluation_id  (evaluation_id)
#
# Foreign Keys
#
#  fk_rails_...  (evaluation_id => evaluations.id)
#
class Question < ApplicationRecord
  belongs_to :evaluation
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true

  enum question_type: { single_choice: 0, multiple_choice: 1, long_answer: 2 }

  def self.question_type_select
    question_types.keys.map { |k| [k.titleize, k] }
  end
end