require 'spec_helper'

describe "the signup process", :js => true do
  before :each do
  #   User.create(:email => 'rod@rod.com', :password => 'rodrodrod')
    visit new_user_registration_path
  end

  it "signs me up" do
    # within("#session") do
      fill_in 'Email', :with => 'rod@rod.com'
      fill_in 'user_password', :with => 'rodrodrodrod'
      fill_in 'user_password_confirmation', :with => 'rodrodrodrod'
      sleep(3)
    # end
    click_on 'Sign up'
          sleep(5)

    expect(page).to have_content 'Welcome!'
  end
end