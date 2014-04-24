module ConcertsHelper
  def format_bands_list(concert)
    concert.bands.map{ |b| b.name }.join(", ") if concert.bands.any?
  end

  def users_attended(concert)
    "(#{pluralize(concert.audience_members.size, "user")} attended this show)"
  end
end
