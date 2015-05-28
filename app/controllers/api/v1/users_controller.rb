module Api
  module V1
    class UsersController < ApplicationController
      respond_to :json

      def index
        respond_with User.all
      end

      def add
        @user = login(params[:email], params[:password])
        respond_with @user
      end

    end
  end
end

