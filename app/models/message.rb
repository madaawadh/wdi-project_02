class Message
    include ActiveModel::Model
    attr_accessor :username, :email,:body
    validates  :email,:body, presence: true
  end