require 'rails_helper'

RSpec.describe "Products", type: :request do
  let(:endpoint)  { '/api/product' }
  let(:header)    { { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' } }
  
  describe "GET All" do
    it "should success" do
      get endpoint, headers: header
      expect(response).to have_http_status(204)  
    end
  end

  describe "GET by id" do
    it "should success" do
      get endpoint + '/1', headers: header
      expect(response).to have_http_status(204) 
    end
  end

  describe "CREATE a product" do
    it "should success" do
      post endpoint, headers: header
      expect(response).to have_http_status(204)
    end
  end

  describe "UPDATE a product" do
    it "should success" do
      put endpoint + '/1', headers: header
      expect(response).to have_http_status(204)
    end
  end

  describe "DELETE a product" do
    it "should success" do
      put endpoint + '/1', headers: header
      expect(response).to have_http_status(204)
    end
  end
end
