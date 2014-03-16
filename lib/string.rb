class String

  def first_character method
    self.sub(/^(.)/) { $1.send method }
  end

end
