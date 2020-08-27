require "rails_helper"

RSpec.describe Api::ApartmentsController, :type => :controller do

    describe "GET apartments#show" do
        it "returns a successful response" do
            expect(response).to be_successful
        end
    end

end
