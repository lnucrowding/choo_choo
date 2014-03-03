module ChooChoo
  module Locomotive
    extend ActiveSupport::Concern

    included do
      cattr_reader :cc_header, :cc_excerpt, :cc_associate

      after_create :track_create
      after_update :track_update
      before_destroy :track_destroy

      def self.cc_header(attr_name)
        @@cc_header = attr_name
      end

      def self.cc_excerpt(attr_name)
        @@cc_excerpt = attr_name
      end

      def self.cc_associates(*attr_names)
        #TODO: try this out
        $cc_associates = []
        attr_names.each do |attr_name|
          @@cc_associates << attr_name
        end
      end

    end


    private

    def track_create
      define_tracked_resource
      Carriage.create!( activity_type: 'created',
                        header: @header,
                        excerpt: @excerpt,
                        tracked_resource_id: @tracked_resource_id,
                        tracked_resource_type: @tracked_resource_type,
                        creator_id: @creator_id )
    end

    def track_update
      define_tracked_resource
      Carriage.create!( activity_type: 'updated',
                        header: @header,
                        excerpt: @excerpt,
                        tracked_resource_id: @tracked_resource_id,
                        tracked_resource_type: @tracked_resource_type,
                        creator_id: @creator_id )
    end

    def track_destroy
      #TODO: implement destroy action
    end

    def define_tracked_resource
      @header = self.send(@@cc_header)
      @excerpt = self.send(@@cc_excerpt)[0...60]
      @tracked_resource_id = self.id
      @tracked_resource_type = self.class.name.demodulize.downcase
      @creator_id = self.user_id

      #TODO: allow for multiple associates?

      @associate_resource_type = @@cc_associates[0]
      @associate = self.send(@@cc_associates[0]).last
    end

  end
end
