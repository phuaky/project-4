class UserProfile < ApplicationRecord
  has_one :stall, dependent: :destroy
  has_one :customer, dependent: :destroy
  belongs_to :user_class

  # validates :email,
  # presence: true,
  # uniqueness: {case_sensitive: false},
  # format: {with: /([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})/, message: "Please enter a valid email"}
  #
  # validates :password,
  # confirmation: true,
  # length: { in: 8..72 },
  # on: :create
  #
  # validates :password_confirmation,
  # length: { in: 8..72 },
  # presence: true,
  # on: :create
  #
  has_secure_password
  #
  # validates :firstName,
  # presence: true
  #
  # validates :handphone,
  # presence: true,
  # length: {is: 8},
  # numericality: {only_integer: true},
  # uniqueness: true,
  # format: {with: /(8|9)\d{7}/, message: "Please enter a valid Singpore mobile number without country code."}

  # validates :user_class_id,
  # presence: true
  # Validates that the corresponding user_class_id exists in TABLE uesr_class before allowing the entry to be created
  # validates :user_class,
  # presence: true

  def self.authenticate(params)
    UserProfile.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
