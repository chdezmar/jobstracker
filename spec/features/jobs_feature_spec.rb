require 'rails_helper'

feature 'jobs' do
  context 'no jobs added' do
    scenario 'should display a prompt to add a job' do
      visit '/jobs'
      expect(page).to have_content 'No jobs yet'
      expect(page).to have_link 'Add a job'
    end
  end

  context 'jobs have been added' do
    before do
      Job.create(position: 'junior developer')
    end

    scenario 'display jobs' do
      visit '/jobs'
      expect(page).to have_content('junior developer')
      expect(page).not_to have_content('No jobs yet')
    end
  end

  context 'adding jobs' do
    scenario 'prompts user to fill out a form, then displays the new job' do
      visit '/jobs'
      click_link 'Add a job'
      fill_in 'Url', with: 'http://companyname.com'
      fill_in 'Position', with: 'Junior developer'
      fill_in 'Company', with: 'Company'
      fill_in 'Rating', with: '5'
      fill_in 'Status', with: 'no'
      click_button 'Add Job'
      expect(page).to have_content 'Junior developer'
      expect(page).to have_content 'Company'
      expect(page).to have_content '5'
      expect(page).to have_content 'no'
      expect(current_path).to eq '/jobs'
    end
  end

  context 'viewing jobs' do

    let!(:job){ Job.create(position:'position') }

    scenario 'lets a user view a job' do
     visit '/jobs'
     click_link 'position'
     expect(page).to have_content 'position'
     expect(current_path).to eq "/jobs/#{job.id}"
    end
  end

  context 'editing jobs' do

    let!(:job) { Job.create position: 'position', url: 'http://google.com' }

    scenario 'can edit a job' do
     visit '/jobs'
     click_link 'position'
     click_link 'Edit'
     fill_in 'Position', with: 'junior position'
     click_button 'Update Job'
     expect(page).to have_content 'junior position'
     expect(current_path).to eq "/jobs/#{job.id}"
    end
  end

end
