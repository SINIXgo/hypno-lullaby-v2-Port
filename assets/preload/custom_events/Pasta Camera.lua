case = null --No se porque lo dejaron vacío,mas fácil era ponerle 0 xd (Aúnque vacío..no ,0 es mas fácil) (Nickobelit)
function onEvent(name, value1, value2)
       if name == "Pasta Camera" then
        case = tonumber(value1)
end
end

function onUpdate()
triggerEvent('Camera Follow Pos',newPointX,490)
        if case == -1 then
            newPointX = 400
            end
        if case == null then
            newPointX = 560
            end
        if case == 1 then
            newPointX = 700
            end
end