require 'spec_helper'

describe UsersController do


  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

  end

  describe "logic on index" do 

    before(:each) do 
      @user = FactoryGirl.create(:user)
      @tech_user = FactoryGirl.create(:user_tech)
      @nontech_user = FactoryGirl.create(:user_nontech)
    end

    it "shows a valid candidate" do
      get 'index'
      assigns(:candidates).first.should eq(@user)
    end

    it "shows all candidates with no filter" do 
      get 'index'
      assigns(:candidates).size.should eq(3)
    end

    it "only shows a only shows a technical candidate when filtered" do 
      get 'index', {:filter => 'Technical'}
      assigns(:candidates).first.should eq(@tech_user)
    end

    it "only shows a non-technical candidate when filtered" do 
      get 'index', {:filter => 'Non-Technical'}
      assigns(:candidates).first.should eq(@nontech_user)
    end


  end

  describe "negative logic on index" do 

    it "doesn't show another startup" do
      get 'index'
      FactoryGirl.create(:user_startup)
      assigns(:candidates).should be_empty
    end
  end

  describe "GET 'show'" do

    it "returns http success" do
      @user = FactoryGirl.create(:user)
      get 'show', id: @user.id
      response.should be_success
    end

  end

end
