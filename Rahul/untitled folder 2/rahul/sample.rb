class Legislator
  # ommitted
  
  # It's important to know Object defines respond_to to take two parameters: the method to check, and whether to include private methods
  # http://www.ruby-doc.org/core/classes/Object.html#M000333
  def self.respond_to?(method_sym, include_private = false)
    if method_sym.to_s =~ /^find_by_(.*)$/
      true
    else
      super
    end
  end
end