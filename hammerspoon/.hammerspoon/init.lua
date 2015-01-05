BORDER = 15
BORDER_OUT = BORDER
BORDER_IN  = BORDER / 2

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad7", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = max.y + BORDER_OUT
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad9", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = (max.x + (max.w / 2)) + BORDER_IN
    frame.y = max.y + BORDER
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad1", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = (max.y + (max.h / 2)) + BORDER_IN
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad3", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = (max.x + (max.w / 2)) + BORDER_IN
    frame.y = (max.y + (max.h / 2)) + BORDER_IN
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad8", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = max.y + BORDER_OUT
    frame.w = max.w - (BORDER_OUT + BORDER_OUT)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad2", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = (max.y + (max.h / 2)) + BORDER_IN
    frame.w = max.w - (BORDER_OUT + BORDER_OUT)
    frame.h = (max.h / 2) - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad4", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = max.y + BORDER_OUT
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = max.h - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad6", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = (max.x + (max.w / 2)) + BORDER_IN
    frame.y = max.y + BORDER_OUT
    frame.w = (max.w / 2) - (BORDER_OUT + BORDER_IN)
    frame.h = max.h - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "pad5", function()
    local win = hs.window.focusedWindow()
    local frame = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    frame.x = max.x + BORDER_OUT
    frame.y = max.y + BORDER_OUT
    frame.w = max.w - (BORDER_OUT + BORDER_OUT)
    frame.h = max.h - (BORDER_OUT + BORDER_IN)

    win:setFrame(frame)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)
hs.alert.show("Config reloaded")
