require_dependency "choo_choo/application_controller"

module ChooChoo
  class ChoochooDefaultController < ApplicationController

    def index
      render :text => "Choo Choo - placeholder"
    end

  end
end
