require 'rails_helper'

RSpec.describe Product, :type => :model do
  subject { described_class.new(name: "XYX") }

  it "is valid with valid attributes" do
    subject.price = 4.00
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "price is not valid if it is not a number" do
    subject.price = "£4.00"
    expect(subject).to_not be_valid
  end

  # it "is not valid if description is nil"

end
