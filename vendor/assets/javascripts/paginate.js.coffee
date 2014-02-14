state = {}
$('.products_table').on 'click', '.pagination a', (e) ->
  history.pushState(state, "", $(this).attr('href'));

window.onpopstate = (e) ->
  $.get(document.location.href)

$('.products_table').on 'change', '#per_page', (e) ->
  parser = getParams()
  count_param = "count=#{$(this).val()}"
  parser.search = replaceCount(parser.search, count_param)
  history.pushState state, "", parser.href
  $.get(parser.href)

getParams = (href) ->
  href = document.location.href unless href
  parser = document.createElement('a')
  parser.href = href
  return parser

replaceCount = (source, newSubstr) ->
  if source == ''
    return newSubstr
  if source.indexOf('count') >= 0
    return source.replace /count=\d+/, newSubstr
  else
    return "#{source}&#{newSubstr}"
