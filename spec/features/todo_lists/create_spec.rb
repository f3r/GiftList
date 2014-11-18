require 'rails_helper'

feature 'Visitor loads root' do
  scenario 'Load Page' do
    visit '/'
    expect(page).to have_content('Sign in with Facebook')
  end
end
