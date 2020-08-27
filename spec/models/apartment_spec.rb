require "rails_helper"


RSpec.describe Apartment, :type => :model do
    subject {
        described_class.new(title: "Anything",
                        price: 400,
                        sqm:130,
                        numofbed: 2,
                        numofbath: 2,
                        picture: "image_url")
    }

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a title" do
        subject.title = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a price" do
        subject.price = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a sqm" do
        subject.sqm = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a numofbed" do
        subject.numofbed = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a numofbath" do
        subject.numofbath = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a picture" do
        subject.picture = nil
        expect(subject).to_not be_valid
    end

end

