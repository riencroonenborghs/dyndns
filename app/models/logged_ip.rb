class LoggedIp < ApplicationRecord
  validates :ip_address, presence: true
end
