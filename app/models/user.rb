class User < ApplicationRecord
  belongs_to :city
  has_many :SyncPrivateMessageUsers
  has_many :received_messages,through: :SyncPrivateMessageUsers, source: :private_message
  has_many :sent_messages, foreign_key: 'sender_id',class_name: "PrivateMessage"
end
