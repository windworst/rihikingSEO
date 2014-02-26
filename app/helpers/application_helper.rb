module ApplicationHelper
  def currentPage(path)
    "active" if current_page?(path)
  end
end
