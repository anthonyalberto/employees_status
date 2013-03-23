require 'spec_helper'
describe "AppSpec" do

  it "requires login to access the app" do
    visit status_index_path
    current_path.should == new_user_session_path
  end

  context "Logged in" do

    before(:each) do
      @user = Fabricate(:user, email: "me22@test.com", password: "11111111", password_confirmation: "11111111", name: "Will Pitt")
      @offline_status = Fabricate(:status, name: "Offline")
      visit new_user_session_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: "11111111"
      click_button "Sign in"
    end

    it "is on the status page" do
      current_path.should == status_index_path
    end

    describe "#update_status" do
      it "updates the current user status", js: true do
        select(@offline_status.name, from: "status")
        sleep(0.5) #Not that great ... I'll have to dig more to find out if there's anything smarter to make it pass
        @user.reload.status.name.should == @offline_status.name
      end
    end
    
    describe "Status & filtering", js: true do
      before(:each) do
        @user2 = Fabricate(:user, email: "me23@test.com", password: "11111111", password_confirmation: "11111111", name: "Rick Smith")
        @user3 = Fabricate(:user, email: "you24@test3.com", password: "11111111", password_confirmation: "11111111", name: "Jack White", status_id: @offline_status.id)
      end

      it "displays all users except the current one" do
        page.should have_content "Rick Smith"
        page.should have_content "Jack White"
      end

      it "filters by name" do
        fill_in "omnisearch", with: "Rick"
        page.should_not have_content @user2.name
      end

      it "filters by status" do
        fill_in "omnisearch", with: "Offline"
        page.should_not have_content @user2.name
      end

      it "filters by email" do
        fill_in "omnisearch", with: "@test.com"
        page.should_not have_content @user3.name
      end
    end
  end
end
