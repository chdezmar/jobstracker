# Jobs Tracker

A simple Rails app to help organizing a job search, so you can get rid of excel spreadsheets.

- [Main rails app](https://github.com/chdezmar/jobstracker)
- [Chrome extension](https://github.com/chdezmar/jobstracker_chrome_ext)

# Tech used
  - Ruby on Rails
  - [DataTables](https://datatables.net/)
  - PostgreSQL
  - Rspec
  - Capybara
  - Chrome extension (Javascript and AJAX)

# Set up

Clone this repo locally.

```
$ bundle install
$ bin/rails db:create
$ bin/rails db:migrate
$ bin/rails db:migrate RAILS_ENV=test
$ bin/rails s
$ http://localhost:3000
```


# Tests
```
$ rspec
```
