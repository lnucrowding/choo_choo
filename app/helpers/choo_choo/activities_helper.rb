module ChooChoo
  module ActivitiesHelper
    def render_activities
      escape_javascript render template: "choo_choo/activities/current_time"
    end
  end
end
