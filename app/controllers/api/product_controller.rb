# frozen_string_literal: true
module Api
    class ProductController < ApplicationController
        def show
        end
        
        def index
            render json: {
                values: 'hello',
                message: 'success'
            }, status: 200
        end
        
        def create
        end
        
        def update
        end
        
        def delete
        end
    end
end
