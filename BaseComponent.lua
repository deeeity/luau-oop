BaseComponent = {};
BaseComponent.__index = BaseComponent;

BaseComponent.allComponents = {};

local constructor = function(self)
    local instance = setmetatable({}, BaseComponent)

    instance.id = #BaseComponent.allComponents + 1
    instance.deleted = false
    
    instance.delete = BaseComponent.delete

    BaseComponent.allComponents[instance.id] = instance
    return instance
end

function BaseComponent:delete()
    self.deleted = true
end

BaseComponent.__call = constructor
return setmetatable(BaseComponent, BaseComponent);