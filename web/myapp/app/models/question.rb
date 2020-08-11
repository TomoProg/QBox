class Question < ApplicationRecord
  belongs_to :account

  scope :with_account, -> {
    eager_load :account
  }
end
