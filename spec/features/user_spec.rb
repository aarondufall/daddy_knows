require 'spec_helper'

describe "the signup process" do
  before :each do
  #   User.create(:email => 'rod@rod.com', :password => 'rodrodrod')
    visit new_user_registration_path
  end

  it "signs me up" do
    # within("#session") do
      fill_in 'Email', :with => 'rod@rod.com'
      fill_in 'user_password', :with => 'rodrodrod'
      fill_in 'user_password_confirmation', :with => 'rodrodrod'
    # end
    click_link 'Sign Up'
    expect(page).to have_content 'Success'
  end
end