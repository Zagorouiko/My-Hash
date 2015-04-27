class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
  end

  define_method(:keys) do
    @keys
  end

  define_method(:values) do
    @values
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:fetch) do |key|
    value_place = @keys.index(key)
    @values.at(value_place)
  end
end
