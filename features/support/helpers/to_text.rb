def to_text string
  return @campaign.name                             if string == "the campaign on the mobilization history"
  return @problem.name                              if string == "the problem on the mobilization history"
  return @event.name                                if string == "the event on the mobilization history"
  return @tweet.text                                if string == "the tweet on the mobilization comments"
  return @tweet.hashtag                             if string == "the tweet's hashtag link"
  return @tweet.username                            if string == "the twitter username's link"
  return @mobilization.pokes.count                  if string == "the pokes counter"
  return @mobilization.ideas.count                  if string == "the ideas counter"
  return @facebook_post.text                        if string == "this mobilization Facebook post"
  return @mobilization.facebook_share_count         if string == "the Facebook shares counter"
  return @mobilization.attending_count              if string == "the attendees counter"
  return @mobilization.signatures_count             if string == "the signatures counter"
  return @mobilization.action_of_the_day.try(:name) if string == "the action of the day"
  return @clipping.body                             if string == "this mobilization clipping"
  return @mobilization.title                        if string == "this mobilization in the mobilizations list"
  return @campaign.mobilization.short_title         if string == "this campaign on the users activities"
  return @poke.campaign.mobilization.short_title    if string == "this poke on the users activities"
  return @problem.mobilization.short_title          if string == "this problem on the users activity"
  return @idea.problem.mobilization.short_title     if string == "this idea on the users activity"
  return @user.name                                 if string == "this user name"
  return @user.profession                           if string == "this user profession"
  return @user.city                                 if string == "this user city"
  return @user.address_district                     if string == "this user district"
  return @user.bio                                  if string == "this user bio"
  return I18n.t("unauthorized.default")             if string == "you are not authorized to access this page"
  return I18n.t("activity.pokes")                   if string == "this poke in the activity feed"
  return I18n.t("activity.campaigns")               if string == "this campaign in the activity feed"
  return I18n.t("activity.ideas")                   if string == "this idea in the activity feed"
  return I18n.t("activity.problems")                if string == "this problem in the activity feed"
  return @category.name                             if string == "this category score"
end
