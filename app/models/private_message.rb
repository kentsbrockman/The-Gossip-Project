class PrivateMessage < ApplicationRecord
  validates :content, presence: true
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :recipients, through: :sync_private_message_users, source: :user
end
