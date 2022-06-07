local applicationHotkeys = {
  c = 'Google Chrome',
  h = 'Hyper',
	v = 'Visual Studio Code',
  s = 'Slack',
	b = 'Brave Browser',
	n = 'Notion',

	tab = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
