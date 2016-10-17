require 'spec_helper'

feature 'Accept key and value pair' do
  scenario 'key and value are sent through get request and receive confirmation have been saved' do
    visit '/set?mykey=myvalue'
    expect(page).to have_content('stored key pair value in session')
  end
end

feature 'Return value after key and value have been added' do
  scenario 'once key and value have been entered then the value can be retrieved' do
    visit '/set?mykey=myvalue'
    visit '/get?key=mykey'
    expect(page).to have_content('myvalue')
  end
end
