module Api
  module V1
    class UserSessionsController < ApplicationController
      respond_to :json

      def create
        @user = login(params[:email], params[:password])
      end

      def complete
      end

      def show
      end
    end
  end
end

