class HomeController < ApplicationController
  def index
    logged_ip = LoggedIp.last
    if logged_ip
      render plain: { ip_address: logged_ip.ip_address, date: logged_ip.created_at.iso8601 }.to_json
    else
      render nothing: true
    end
  end
end