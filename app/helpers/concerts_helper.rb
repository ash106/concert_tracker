module ConcertsHelper
  def format_bands_list(concert)
    concert.bands.map{ |b| b.name }.join(", ") if concert.bands.any?
  end
end
