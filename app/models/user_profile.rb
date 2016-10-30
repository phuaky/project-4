class UserProfile < ApplicationRecord

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false},
  format: {with: /([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})/, message: "Please enter a valid email"}

  validates :password,
  confirmation: true,
  length: { in: 8..72 },
  on: :create

  # validates :password_confirmation,
  # length: { in: 8..72 },
  # presence: true,
  # on: :create

  has_secure_password

  def self.authenticate(params)
    UserProfile.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
