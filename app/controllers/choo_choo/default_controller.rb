require_dependency "choo_choo/application_controller"

module ChooChoo
  class DefaultController < ApplicationController

    def index
      @activities = ChooChoo::Carriage.all
    end
  end
end
