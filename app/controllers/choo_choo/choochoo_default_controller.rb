require_dependency "choo_choo/application_controller"

module ChooChoo
  class ChoochooDefaultController < ApplicationController

    def index
      @posts = Post.all
      @comments = Comment.all
      @users = User.all
      @public_activities = PublicActivity::Activity.order('created_at desc')
    end

  end
end
