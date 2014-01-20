def full_title(page_title)
  base_title = "9GAG - Just For Fun"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end