class Signup < ApplicationRecord
  validates :firstname, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP }
end
