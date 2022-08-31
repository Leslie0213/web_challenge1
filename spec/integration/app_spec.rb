require "spec_helper"
require "rack/test"
require_relative "../../app"


describe Application do
    include Rack::Test::Methods
  
    let(:app) { Application.new }
  
    context "GET /sort-names" do
      it 'sorts names from the string of names provided' do
        # Assuming the post with id 1 exists.
        response = get('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')
  
        expect(response.status).to eq(200)
        expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
      end
  
    
    end
end