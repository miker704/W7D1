class SessionsController < ApplicationController

      def new
            render :new
      end

      def create
            @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
            if @user.nil?
                  render json: "Invalid login information"
            else  
                  login!(@user)
                  redirect_to user_url(@user)
                  # token = @user.reset_session_token
                  # sessions[:session_token] = token
            end
      end

      def destroy

            if current_user
                  current_user.reset_session_token!
                  session[:session_token]=nil
            end
            redirect_to cats_url
      end

      private 
      # def session_params 
      #       params.require(:user).permit(:user_name, :password)
      # end
end
