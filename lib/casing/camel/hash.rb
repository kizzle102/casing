module Casing
  class Camel
    module Hash
      def self.call(val, values: nil, preserve_symbols: nil)
        values = values.nil? ? false : values
        preserve_symbols ||= false

        ::Hash[val.map { |k, v| [Casing::Camel.(k, values: true, preserve_symbols: preserve_symbols), Casing::Camel.(v, values: values, preserve_symbols: preserve_symbols)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
