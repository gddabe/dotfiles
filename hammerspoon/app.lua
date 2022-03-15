local applicationHotkeys = {
  q = 'Google Chrome',
  w = 'Hyper',
	e = 'Visual Studio Code',
	a = '',
  s = 'Spotify',
	d = '',
	z = '',
  x = 'Slack',
	c = '',
	n = 'Notion',
	tab = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
