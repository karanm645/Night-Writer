require './lib/library'

RSpec.describe Library do
  it "exists" do
    library = Library.new
    expect(library).to be_an_instance_of(Library)
  end
end
