def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |main, values|
    hash.each do |value, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(main)
          new_hash[name][main] = []
        end
        if !new_hash[name][main].include?(value)
          new_hash[name][value] << value.to_s
        end
      end
    end
  end
  new_hash
end
end
