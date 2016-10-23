class Message
  include Mongoid::Document
  field :body, type: String
  field :sent, type: DateTime

  embedded_in :user, inverse_of: :to
  embedded_in :user, inverse_of: :from
end
