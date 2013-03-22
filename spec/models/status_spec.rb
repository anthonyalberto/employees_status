require 'spec_helper'

describe Status do
  it "has a valid factory" do
    Fabricate(:status).should be_valid
  end

  describe "Validation" do
    it "fails without a name" do
      Fabricate.build(:status, name: nil).should_not be_valid
    end

    it "fails with an empty name" do
      Fabricate.build(:status, name: "").should_not be_valid
    end
  end
end
