class CaseConverter
  def snake_to_camel(string)
    remove_underscores(upcase_characters(string))
  end

  private

  def upcase_characters(string)
    string.gsub(/(^[^a-z]?[a-z])|((?<=_)[a-z])/) {|char| char.upcase}
  end

  def remove_underscores(string)
    string.gsub(/_/, '')
  end

end
