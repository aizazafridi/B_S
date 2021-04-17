module ThumbnailHelper

  # Regex to find YouTube's and Vimeo's video ID
  YOUTUBE_REGEX = %r(^(http[s]*:\/\/)?(www.)?(youtube.com|youtu.be)\/(watch\?v=){0,1}([a-zA-Z0-9_-]{11}))
  VIMEO_REGEX = %r(^https?:\/\/(?:.*?)\.?(vimeo)\.com\/(\d+).*$)

  # Finds YouTube's video ID from given URL or [nil] if URL is invalid
  # The video ID matches the RegEx \[a-zA-Z0-9_-]{11}\
  def find_youtube_id url
    url = sanitize url
    matches = YOUTUBE_REGEX.match url.to_str
    if matches
      matches[6] || matches[5]
    end
  end

  # Finds youtube video thumbnail
  def get_youtube_thumbnail url
    youtube_id = find_youtube_id url
    result = "http://img.youtube.com/vi/#{youtube_id}/0.jpg"
  end

  # Finds Vimeo's video ID from given URL or [nil] if URL is invalid
  def find_vimeo_id url
    url = sanitize url
    matches = VIMEO_REGEX.match url.to_str
    matches[2] if matches
  end

  # Finds vimeo video thumbnail
  def get_vimeo_thumbnail url
    vimeo_id = find_vimeo_id url
      result = URI.open("http://vimeo.com/api/v2/video/#{vimeo_id}.json").read
    begin
      JSON.parse(result).first['thumbnail_large']
    rescue StandardError
      nil
    end
  end

  # Main function
  # Return a video thumbnail
  # If the url provided is not a valid YouTube or Vimeo url it returns [nil]
  def get_video_thumbnail(url)
    if find_vimeo_id(url)
        get_vimeo_thumbnail(url)
    elsif find_youtube_id(url)
        get_youtube_thumbnail(url)
    end
  end
end
