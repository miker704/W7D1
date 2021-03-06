class UsersController < ApplicationController
      before_action :require_current_user!, only: [:create, :new]


      def show
            @user = User.find(params[:id])
            render :show
      end

      def new
            render :new
      end

      def create
            @user = User.new(user_params)
            if @user.valid?
                  @user.save!
                  logout!
                  login!(@user)
                  redirect_to user_url(@user)
            else 
                  render json: @user.errors.full_messages, status: :unprocessable_entity
            end
      end

      private
      def user_params 
            params.require(:user).permit(:user_name, :password)
      end
end
