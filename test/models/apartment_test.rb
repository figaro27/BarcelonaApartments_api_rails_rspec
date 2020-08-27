require 'test_helper'

class ApartmentTest < ActiveSupport::TestCase
  test "should not save apartment without title" do
    apartment = Apartment.new
    assert !apartment.save
  end
end
