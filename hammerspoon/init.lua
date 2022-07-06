hyper = {"ctrl", "alt", "cmd", "shift"}

-----------------------------------------
-- Reload Config
function reload_config(files)
    hs.reload()
end
-----------------------------------------
-- Application Keybinding
local applicationHotkeys = {
    c = 'Google Chrome',
    h = 'Hyper',
    v = 'Visual Studio Code',
    s = 'Slack',
    b = 'Brave Browser',
    n = 'Notion',
    p = 'Spotify',
    f = 'Figma',
    tab = 'Finder'
}
for key, app in pairs(applicationHotkeys) do
    hs.hotkey.bind(hyper, key, function()
        hs.application.launchOrFocus(app)
    end)
end
-----------------------------------------

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("  Ready!  ")

-- local spotify = require "spotify"

-- -- Spotify
-- -- hs.hotkey.bind(hyper, "S", spotify.playing)
-- hs.hotkey.bind(hyper, "Right", spotify.nextNotify)
-- -- hs.hotkey.bind(KPhyper, "D", spotify.nextNotify)
-- hs.hotkey.bind(hyper, "Left", spotify.previousNotify)
-- -- hs.hotkey.bind(KPhyper, "A", spotify.previousNotify)
-- hs.hotkey.bind(hyper, "Up", spotify.toggle)

-- hs.window.animationDuration = 0.1
-- hs.hotkey.bind(hyper, "h", function()
--   local win = hs.window.focusedWindow();
--   if not win then return end
-- win:moveToUnit(hs.layout.left50)
-- end)
-- hs.hotkey.bind(hyper, "j", function()
--   local win = hs.window.focusedWindow();
--   if not win then return end
-- win:moveToUnit(hs.layout.maximized)
-- end)
-- hs.hotkey.bind(hyper, "k", function()
--   local win = hs.window.focusedWindow();
--   if not win then return end
-- win:moveToScreen(win:screen():next())
-- end)
-- hs.hotkey.bind(hyper, "l", function()
--   local win = hs.window.focusedWindow();
--   if not win then return end
-- win:moveToUnit(hs.layout.right50)
-- end)

-- -- bind hotkey
-- hs.hotkey.bind(hyper, "space", function()
--   -- get the focused window
--   local win = hs.window.focusedWindow()
--   -- get the screen where the focused window is displayed, a.k.a. current screen
--   local screen = win:screen()
--   -- compute the unitRect of the focused window relative to the current screen
--   -- and move the window to the next screen setting the same unitRect
--   win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
-- end)
