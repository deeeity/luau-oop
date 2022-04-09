BaseComponent = require("BaseComponent")

Button = {};
Button.__index = Button;

local constructor = function(self, name, text)
    local instance = BaseComponent()

    instance.name = name
    instance.text = text

    instance.someFunction = Button.someFunction

    return instance
end

function Button:someFunction()
    print(self.name)
end

Button.__call = constructor
return setmetatable(Button, Button);
