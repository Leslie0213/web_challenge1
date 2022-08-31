

## 1. Design the Route Signature

            # Request:
            POST http://localhost:9292/sort-names

            # With body parameters:
            names=Joe,Alice,Zoe,Julia,Kieran

            # Expected response (sorted list of names):
            Alice,Joe,Julia,Kieran,Zoe

## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code. 

_Replace the below with your own design. Think of all the different possible responses your route will return._

when query param names is "Joe,Alice,Zoe,Julia,Kieran" 

response = Alice,Joe,Julia,Kieran,Zoe

## 3. Write Examples

# Request:

GET /sort-names?names="Joe,Alice,Zoe,Julia,Kieran"

# Expected response:

Response for 200 OK

```
Alice,Joe,Julia,Kieran,Zoe

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /sort-names" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

      expect(response.status).to eq(200)
     expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
    end


## 5. Implement the Route

