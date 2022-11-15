class MainController < ApplicationController
    def main
      if user_signed_in?
        redirect_to posts_path
      end
    end
  end
  