class LogController < ApplicationController
  def create
    return unless ENV["TOKEN"] == params["token"]

    LoggedIp.create!(ip_address: request.remote_ip)
  end
end