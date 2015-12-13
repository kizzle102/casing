require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "String Converted to #{casing.downcase} Case" do
    converter = Casing.const_get(casing)

    it "Converts from under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example
      converted = converter.(input)

      __logger.data "Underscore to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
    end

    it "Converts from pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example
      converted = converter.(input)

      __logger.data "Pascal to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
    end

    it "Converts from camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example
      converted = converter.(input)

      __logger.data "Camel to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
    end

    it "Converts symbols to strings" do
      input = Casing::Controls::String::Symbol.example
      converted = Casing::Camel.(input)

      __logger.data "Symbols are converted to strings (#{casing}): #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
      assert(converted.is_a? String)
    end
  end
end
