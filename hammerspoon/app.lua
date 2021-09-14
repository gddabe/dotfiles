local applicationHotkeys = {
  q = 'Google Chrome',
  w = 'iTerm',
	e = 'Visual Studio Code',
	a = '',
  s = 'Spotify',
	d = '',
	z = '',
  x = 'Slack',
	c = '',
	tab = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
