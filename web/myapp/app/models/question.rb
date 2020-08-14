class Question < ApplicationRecord
  belongs_to :account
  has_many :answers
  has_one :best_answer
  include OwnerCheckable

  scope :with_account, -> {
    eager_load :account
  }
end
