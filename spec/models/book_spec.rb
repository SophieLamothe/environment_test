require "rails_helper"

RSpec.describe Book, type: :model do
  it "loads seed data into the test database" do
    expect(Book.count).to be >= 2
    expect(Book.exists?(title: "TEST: RSpec Seed 1")).to be true
    expect(Book.exists?(title: "TEST: RSpec Seed 2")).to be true
  end
end
