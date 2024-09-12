function NewObject()
    local vars = {}

    local obj = {}

    local mt = {
        __index = function(t, key)
            return vars[key]
        end,

        __newindex = function(t, key, value)
            vars[key] = value  -- Permitir agregar o modificar directamente
        end
    }

    setmetatable(obj, mt)

    return obj
end

local game = NewObject()

function hi()
    if game.chat == true then
        io.write("true")
    elseif game.chat == false then
        print("false")
    else
        print("error: 1 game.chat doesnt exist")
    end
end

function wait(seconds)
    local start = os.clock()
    while os.clock() - start < seconds do
        -- Espera
    end
end

game.chat = true

game.z = "hello"  -- Se puede agregar directamente
print(game.z)

game.z = 100  -- Se puede modificar directamente
print(game.z)

game.y = 200  -- Se puede agregar otra variable
print(game.y)

hi()
