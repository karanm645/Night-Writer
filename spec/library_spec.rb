require './lib/library'

RSpec.describe Library do
  before(:each) do
    @library = Library.new
  end
  it "exists" do
    expect(@library).to be_an_instance_of(Library)
  end

  it "can find_value" do
    expect(@library.find_value).to eq(['0.', '00', '..'])
  end
end
