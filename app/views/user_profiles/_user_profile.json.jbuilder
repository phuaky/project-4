json.extract! user_profile, :id, :email, :password, :firstName, :lastName, :handphone, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)