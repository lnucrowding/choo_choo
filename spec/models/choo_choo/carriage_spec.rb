require 'spec_helper'

module ChooChoo
  describe Carriage do
    it "is valid with proper values" do
      carriage = FactoryGirl.create(:choo_choo_carriage)
      carriage.should be_valid
    end
  end
end
