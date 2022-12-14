class ApplicationController < ActionController::Base
  include ActionController::Cookies
   skip_before_action :verify_authenticity_token

      before_action :authorized

      def authorized
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      end
    # include ActionController::Cookies
end
