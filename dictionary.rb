
class Dictionary
  def initialize
    @entries = {}
  end

  def add(entries)
    if entries.class == String
      @entries[entries] = nil
    elsif entries.class == Hash
      entries.each do |entry, definition|
        @entries[entry] = definition
      end
    end
  end

  def entries
    @entries
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(findword)
    @entries.select{| k, v | k.include?(findword)}
  end

end
