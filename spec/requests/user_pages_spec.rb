require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('new profile information') }
    it { should have_title(full_title('Sign up')) }
  end
  
  describe "preferences page" do
    before { visit preferences_path }
    
    it { should have_content('Profile Preferences')}
    it { should have_title('Preferences')}
    
  end
  
end
