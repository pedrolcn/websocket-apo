class ChatRoom < ApplicationRecord
    has_many :messages
    has_many :users
    validates :topic, presence: true
end