module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Rails Hero"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end