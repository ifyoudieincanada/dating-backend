class User
  include Mongoid::Document
  field :name, type: String
  field :paypal_info, type: Jsonb
  field :long, type: Float
  field :lat, type: Float
  field :intrested_in, type: String
  field :gender, type: String
  field :bio, type: String
  field :avatar, type: String
end
