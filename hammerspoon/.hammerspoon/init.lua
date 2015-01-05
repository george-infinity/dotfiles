BORDER = 15
BORDER_OUT = BORDER
BORDER_IN  = BORDER / 2

windows = {}

function storeWindow(win)
    -- Store the originial frame data
    if windows[win:id()] == nil then
        windows[win:id()] = win:frame()
    end
end

function getWindow(win)
    if windows[win:id()] ~= nil then
        return windows[win:id()]
    end
end

function transformWindow(win, x, y, w, h)
    local frame = win:frame()

    storeWindow(win)

    frame.x = x
    frame.y = y
    frame.w = w
    frame.h = h

    win:setFrame(frame)
end


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad7", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = max.y + BORDER_OUT
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad9", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = (max.x + (max.w / 2)) + BORDER_IN
    local y = max.y + BORDER
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad1", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = (max.y + (max.h / 2)) + BORDER_IN
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad3", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = (max.x + (max.w / 2)) + BORDER_IN
    local y = (max.y + (max.h / 2)) + BORDER_IN
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad8", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = max.y + BORDER_OUT
    local w = max.w - (BORDER_OUT + BORDER_OUT)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad2", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = (max.y + (max.h / 2)) + BORDER_IN
    local w = max.w - (BORDER_OUT + BORDER_OUT)
    local h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad4", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = max.y + BORDER_OUT
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = max.h - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad6", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = (max.x + (max.w / 2)) + BORDER_IN
    local y = max.y + BORDER_OUT
    local w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    local h = max.h - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad5", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    local x = max.x + BORDER_OUT
    local y = max.y + BORDER_OUT
    local w = max.w - (BORDER_OUT + BORDER_OUT)
    local h = max.h - (BORDER_OUT + BORDER_IN)

    transformWindow(win, x, y, w, h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad0", function()
    local win = hs.window.focusedWindow()
    frame = getWindow(win)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)
hs.alert.show("Config reloaded")
