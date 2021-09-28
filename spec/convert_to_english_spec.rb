require './lib/convert_to_english'
require './lib/library'
require './lib/night_reader'

RSpec.describe ConvertToEnglish do
  it "exists" do
    convert_to_english = ConvertToEnglish.new
    expect(convert_to_english).to be_an_instance_of(ConvertToEnglish)
  end

  xit "can find a key" do
    convert_to_english = ConvertToEnglish.new
    expect(convert_to_english.convert('h')).to eq(['0.', '00', '..'])
  end

  it "can find chars" do
    convert_to_english = ConvertToEnglish.new

    expect(convert_to_english.split_string("hi")).to eq(["h", "i"])
  end
end
