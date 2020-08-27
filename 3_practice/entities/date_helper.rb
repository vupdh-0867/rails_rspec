class DateHelper
  def get_day_part hour
    return "morning" if hour >= 1 && hour <= 12

    return "afternoon" if hour >= 13 && hour <= 17

    return "evening" if hour >= 18 && hour <= 24
  end
end
