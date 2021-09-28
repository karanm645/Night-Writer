require './lib/convert_to_braille'
require './lib/library'
require './lib/night_writer'

RSpec.describe ConvertToBraille do
  it "exists" do
    convert_to_braille = ConvertToBraille.new
    expect(convert_to_braille).to be_an_instance_of(ConvertToBraille)
  end

  xit "can find a key" do
    convert_to_braille = ConvertToBraille.new
    expect(convert_to_braille.convert(h)).to eq(['0.', '00', '..'])
  end

  it "can find chars" do
    convert_to_braille = ConvertToBraille.new

    expect(convert_to_braille.split_string("hi")).to eq(["h", "i"])
  end
end
