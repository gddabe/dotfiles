local applicationHotkeys = {
  q = 'Hyper',
  w = 'iTerm',
	e = 'Visual Studio Code',
	a = '',
  s = '',
	d = '',
	z = '',
  x = '',
	c = '',
	tab = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
