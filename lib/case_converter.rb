class CaseConverter
  def upcase_characters(string)
    string.gsub(/(\A\w|(?<=_)\w)/) {|char| char.upcase}
    # also: (^\D|(?<=_)\D)
  end

  def remove_underscores(string)
    string.gsub(/_/, '')
  end

  def snake_to_camel(string)
    remove_underscores(upcase_characters(string))
  end
end