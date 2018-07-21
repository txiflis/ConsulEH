require 'rails_helper'

feature 'User invites' do

  background do
    login_as_manager
  end

  scenario "Send invitations" do
    visit new_management_user_invite_path

    fill_in "emails", with: "john@example.com, ana@example.com, isable@example.com"
<<<<<<< HEAD
    click_button "Send invites"
=======
    click_button "Send invitations"
>>>>>>> v0.16

    expect(page).to have_content "3 invitations have been sent."
  end

end