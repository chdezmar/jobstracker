def sign_in_user(email = 'test@gmail.com', password = '12345678')
    visit 'users/sign_in'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
end


def sign_up_user(email = 'test@gmail.com', password = '12345678', password_confirmation = '12345678')
    visit 'users/sign_up'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password_confirmation
    click_button 'Sign up'
end


def add_job( position='position', url='http://url.com', company='company', location='location', rating='0', status='status', info='info')
  visit '/jobs'
  click_link 'Add a job'
  fill_in 'Url', with: url
  fill_in 'Position', with: position
  fill_in 'Company', with: company
  fill_in 'Location', with: location
  fill_in 'Rating', with: rating
  fill_in 'Status', with: status
  fill_in 'job_info', with: info
  click_button 'Add Job'
end
