require 'spec_helper'

set_url = '/set?mykey=myvalue'
get_url = '/get?key=mykey'

feature 'Accept key and value pair' do
  scenario 'key and value are sent through get request and receive confirmation have been saved' do
    visit set_url
    expect(page).to have_content('stored key pair value in session')
  end
end

feature 'Return value after key and value have been added' do
  scenario 'once key and value have been entered then the value can be retrieved' do
    visit set_url
    visit get_url
    expect(page).to have_content('myvalue')
  end
end
