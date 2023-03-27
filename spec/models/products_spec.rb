# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Product, :type => :model do
   subject { described_class.new(product_name: 'product Name', 
                                 product_code: 'somthing', 
                                 description: 'description', 
                                 price: 10000, 
                                 weight: 10)
        }
   describe 'attributes' do
    it { is_expected.to respond_to(:product_name) }
    it { is_expected.to respond_to(:product_code) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:price) }
    it { is_expected.to respond_to(:weight) }
    it { is_expected.to respond_to(:condition) }
   end

   describe 'validation' do
    it "is not valid without product_name" do
        subject.product_name = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without product_code" do
        subject.product_code = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without description" do
        subject.description = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without price" do
        subject.price = nil
        expect(subject).to_not be_valid
    end

    it "is valid without weight" do
        subject.weight = nil
        expect(subject).to be_valid
    end

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    
    
   end
end
