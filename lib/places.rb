class Places
  @@places = []
  define_method(:initialize) do |destination|
    @destination = destination
  end

  define_method(:destination) do
    @destination
  end

  define_singleton_method(:places_list) do
    @@places
  end

  define_method(:places_save) do
    @@places.push(@destination)
  end
end
