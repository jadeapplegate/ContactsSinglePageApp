require 'spec_helper'

describe '/contacts' do

  before (:each) do
    @contacts = Contact.create!(name: 'Jade', email: 'jade@jade.com', phone: '555-555-5555', image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTBTc5GzA95Wm_VseatcIZRMTUg1fZba2U0y62XemZGP0qkTkHxeV0MEIU')
  end

  describe 'GET with JSON' do
    before (:each) do
      get '/contacts.json'
      @result = JSON.parse(response.body)
    end

    it 'returns all contacts' do
      @result.should_not be_nil
      @result.should have(1).contacts
    end

    it 'should have the correct data in the todos' do
      @result.find do |todo|
        todo['name'] == 'Jade'
      end.should_not be_nil
    end
  end
end