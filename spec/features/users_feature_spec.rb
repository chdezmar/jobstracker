require 'rails_helper'


feature 'User' do

  context 'has not signed up yet' do
    it 'should see a sign up link and a sign in link' do
      visit '/'
      expect(page).to have_link('Sign up')
      expect(page).to have_link('Sign in')
      end
    end

  context 'has signed up' do
    it 'should see a sign out link' do
      sign_up_user
      expect(page).to have_link('Sign out')
      end
  end


end
