require './lib/convert_to_braille'

RSpec.describe ConvertToBraille do
  it "exists" do
    convert_to_braille = ConvertToBraille.new
    expect(convert_to_braille).to be_an_instance_of(ConvertToBraille)
  end
end
