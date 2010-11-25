require 'spec_helper'

describe User do
  before(:each) do
       @user = User.create :email => "user@test.com", :password => '123456'
       @user1 = User.create :name => "user1@test.com", :password => '123'
    end
    it "has valid attributes" do
      @user.should be_valid
    end
    it "doesn't have a valid email address" do
      @user1.should_not be_valid
    end
    
    it "should find an account by it's e-mail address" do
      User.find_by_email("user@test.com").should be_true
    end
end
