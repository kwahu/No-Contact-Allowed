class String
  def replace_phone(replacement = " ")
    self.gsub( /((\([0-9]{2,3}\))|([0-9]{2,3}))( |-)?[0-9]((-| )?[0-9]{2,3}){2,5}/, replacement)
  end

  def replace_email(replacement = " ")
    self.gsub( /([A-Za-z_0-9])*((([\[][ ]*|[ ])at([]]|[ ]*)*)|(([\[][ ]*|[ ])*\@([]]|[ ]*)*))([A-Za-z_0-9][.]*)*([.]|([ ]dot[ ]))(([A-Za-z])+)?/, replacement)
  end

  def replace_address(replacement = " ")
    self.gsub( /([aAuU]l\.) ?[0-9]? ?([A-Z??????î??][A-Za-zz??????—????????î??]* ){1,3}[0-9]*(\/[0-9]+)?/, replacement).gsub( /[0-9]{2}-[0-9]{3} [A-Za-zz??????—????????î??]{3,}( ?- ?[A-Za-z??????—????????î??]*)?/, replacement)
  end

  def replace_all_contact(replacement = " ")
    self.replace_phone(replacement).replace_email(replacement).replace_address(replacement)
  end
end