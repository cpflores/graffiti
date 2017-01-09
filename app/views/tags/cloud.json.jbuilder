json.array!(@tags) do |tag| # create an outer array and loop through each item
  json.text    tag.text     # json item "text" will be tag.text
  json.weight  tag.weight
  # json item "link" will be the url for tag_filter with the argument tag.text
  json.link    tag_filter_path(tag.text)
end
