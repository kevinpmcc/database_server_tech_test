require 'spec_helper'

feature 'Accept key and value pair' do
  scenario 'key and value are sent through get request and receive confirmation have been saved' do
    visit '/set?mykey=myvalue'
    expect(page).to have_content('stored key pair value in session')
  end
end
