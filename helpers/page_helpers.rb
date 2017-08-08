# basic page output helpers
module PageHelpers
  def page_title
    current_page.data.title.to_s
  end

  def page_data
    current_page.data
  end
end
