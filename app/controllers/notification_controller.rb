require 'fcm'

class NotificationController < ApplicationController

  def send_notification
    fcm = FCM.new(ENV['PUSH_NOTIFICATION_API_KEY'])
    token_string =  params[:token]
    puts token_string
    message = {
      notification: {
        title: 'hey shrads',
        body: 'checkout the notification'
      },
      registration_ids: token_string
    }
    puts message
    response = fcm.send(message.to_json)
    render json: {
      message: 'Notification sent',
      fcm_response: response,
      notification: message[:notification]
    }
  end
end
