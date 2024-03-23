dofile("lib.lua")


function main() 
    number = 0

    for i = 1,100000000,1 
    do 
           number = number + i 
    end

    io.write(number)
    lib()
    io.write("\nProgram exit")
end


t = {width=10, height=20}
print(t["width"])

print(type(t["width"]))

txt1 = "Hellow "
txt2 = "World!"

txt3 = txt1 .. txt2
print(txt3)



--main()


