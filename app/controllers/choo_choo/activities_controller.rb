require_dependency "choo_choo/application_controller"

module ChooChoo
  class ActivitiesController < ApplicationController
    def index
      @activities = ChooChoo::Carriage.order('created_at desc')
    end
  end
end
