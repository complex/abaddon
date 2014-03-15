class String

  def upcase_first_character
    self.sub(/^(.)/) { $1.upcase }
  end

end
