module ApplicationHelper

  def time_ago text
    "#{ time_ago_in_words text } ago"
  end

  def simple_datetime time
    time.strftime '%Y/%m/%d %H:%M:%S'
  end

end
