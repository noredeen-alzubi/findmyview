class ApplicationController < ActionController::Base
  def request_ip
    if Rails.env.development? && params[:ip]
      params[:ip]
    else
      request.remote_ip
    end
  end
end
