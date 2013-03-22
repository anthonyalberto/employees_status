require 'spec_helper'

describe User do

  it "has a valid factory" do
    Fabricate(:user).should be_valid
  end

  describe "Validation" do
    it "fails without a status_id" do
      Fabricate.build(:user, status_id: nil).should_not be_valid
    end

    it "fails without a name" do
      Fabricate.build(:user, name: nil).should_not be_valid
    end

    it "fails with an empty name" do
      Fabricate.build(:user, name: "").should_not be_valid
    end
  end
end
