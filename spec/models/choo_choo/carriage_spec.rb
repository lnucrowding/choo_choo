require 'spec_helper'

module ChooChoo
  describe Carriage do

    it { should validate_presence_of :tracked_resource_id }
    it { should validate_presence_of :tracked_resource_type }
    it { should validate_presence_of :excerpt }
    it { should validate_presence_of :header }
    it { should validate_presence_of :activity_type }

    it "is valid with proper values" do
      carriage = create(:choo_choo_carriage)
      expect(carriage).to be_valid
    end

  end
end
