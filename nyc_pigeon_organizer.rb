def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |key, hash|
    hash.each do |value, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        if !new_hash[name][key].include?(value)
          new_hash[name][key] << value.to_s
        end
      end
    end
  end
  new_hash
end
