 require "rails_helper"
 require 'support/sign_up'

  feature "Account Creation" do
  scenario "allows guest to create account" do
  sign_up
  expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
  end





