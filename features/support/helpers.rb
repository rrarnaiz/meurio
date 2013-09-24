def to_url string
  return root_path                        if string == "the homepage"
  return mobilization_path(@mobilization) if string == "this mobilization page"
end

def to_element string
  return ".vision"                                      if string == "the Meu Rio's vision"
  return ".principles"                                  if string == "the Meu Rio's principles"
  return ".history .item.campaigns"                     if string == "the campaign on the mobilization history"
  return ".history .item.problems"                      if string == "the problem on the mobilization history"
  return ".comments .item.tweet"                        if string == "the tweet on the mobilization comments"
  return ".pokes_counter .counter"                      if string == "the pokes counter"
  return ".ideas_counter .counter"                      if string == "the ideas counter"
  return ".images .empty"                               if string == "this mobilization have no image yet"
  return ".images img[src='#{@image.file.square.url}']" if string == "this mobilization image"
end

def to_text string
  return @campaign.name            if string == "the campaign on the mobilization history"
  return @problem.name             if string == "the problem on the mobilization history"
  return @tweet.text               if string == "the tweet on the mobilization comments"
  return @mobilization.pokes.count if string == "the pokes counter"
  return @mobilization.ideas.count if string == "the ideas counter"
end

def mobilization_field field
  return @mobilization.title       if field == "title"
  return @mobilization.description if field == "description"
  return @mobilization.hashtag     if field == "hashtag"
end
