require 'spec_helper'

module ChooChoo
  describe Carriage do
    it "is valid with proper values" do
      # todo syntax & expect
      carriage = FactoryGirl.create(:choo_choo_carriage)
      expect(carriage).to be_valid
    end
  end
end
