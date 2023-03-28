local function new_bool(f)
    local r = math.random(1, 2)
    local bool = false

    if r == 1 then
        bool = false
    elseif r == 2 then
        bool = true
    end

    pcall(f, bool)
    -- pcall(f, bool, "a") <----- You can add as many arguments as you want!
end

new_bool(function(state)
    if state then
        print("Bool == True")
    else
        print("Bool == False")
    end
end)
