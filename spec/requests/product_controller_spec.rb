require 'rails_helper'

RSpec.describe "Products", type: :request do
  let(:endpoint)  { '/api/products' }
  let(:header)    { 'ACCEPT' => 'application/json' }
  
  subject { 
    get endpoint
  }

  describe "GET /index" do
    it "should get 200" do
      subject
      expect(response).to have_http_status(200)  
    end
    
    #TODO check the response body
  end
end
