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

    if @keys.include?(key)
      key_index = @keys.index(key)
      @values[key_index] = value
    else
      @keys.push(key)
      @values.push(value)
    end
  end

  define_method(:fetch) do |key|
    value_place = @keys.index(key)
    @values.at(value_place)
  end

  define_method(:has_key?) do |key|
    @keys.include?(key)
  end
end
