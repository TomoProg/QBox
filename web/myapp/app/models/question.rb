class Question < ApplicationRecord
  belongs_to :account
  has_many :answers

  scope :with_account, -> {
    eager_load :account
  }
end
