require 'spec_helper'

describe "UserPages" do
  
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }
    
    it { should have_selector('h1',		text: 'Sign up' ) }
    it { should have_selector('title',	text: full_title('Sign up')) }
  end
  
  describe "email address with mixed case" do
    let(:mixed_case_email) { "Foo@ExAMPle.CoM" }

    it "should be saved as all lower-case" do
      @user.email = mixed_case_email
      @user.save
      @user.reload.email.should == mixed_case_email.downcase
    end
  end
end
