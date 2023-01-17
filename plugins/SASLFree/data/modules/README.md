# WingFlex Studios SASL Developer Documentation

## **Creating new scripts**
Creating a new script is pretty easy, but it's not only creating the script itself. There are a few things you'll need to do.

1. Create the script, give it a unique and descriptive name!

    - Putting scripts in subdirectories is allowed too. You'll just need to add the following code in `main.lua`.
    ```lua
    addSearchPath(moduleDirectory.."/Custom Module/{NewDirectoryNameHere}")
    ```
- Example: `APtests.lua`
    

2. Add the script name to the array `components`in `main.lua`, **without file extension.**
- Example:
```lua
components = {
    ...
    APtests {}
}
```
3. Describe and author(multiple people are allowed, Discord names are prefered but not required) the script by commenting at the top of the script.
- Example: 
```lua
--[[
    A script that is used for autopilot testing.

    - Matt3o0
    - Brussels_aviation
]]
```

And that's it! You can now start coding in your new script.

## **tools.lua**

`tools.lua` is a script located in the folder `Custom Module` with all the functions and variables that get used frequently throughout the project. Every function and variable is commented(with MarkDown!) so that you can easily view the descriptions of them in the IDE of your choice. Below you can see an example.

![commentedFunctionExample](https://cdn.discordapp.com/attachments/1054156349568729139/1065010908717395999/image.png)

### **Using variables from `tools.lua`**

To simply use a variable located in `tools.lua` you need to nothing. All variables are global ones so no extra code is needed to get a variable from the script, e.g. the variable `XPV`


### **Using functions from `tools.lua`**

Calling a function from the script is a bit more difficult than variables but still pretty easy. You will need to add `require 'tools'` at the top of your script and you should be able to call every function without issues.

### **Creating new variables in `tools.lua`**

1. Create a **global** variable in `tools.lua`, give it a unique and descriptive name!

- Example:
```lua
PlaneName = 'Boeing 787 Dreamliner'
```
2. Comment the variable with a description. This will show up in your IDE when you hover over it(in another file too).
- Example:
```lua
PlaneName = 'Boeing 787 Dreamliner' -- The name of the aircraft
```

You can now call the variable from everywhere when you need it.

### **Creating new functions in `tools.lua`**

1. Create a function in `tools.lua`, give it a unique and descriptive name!

- Example:
```lua
function SayAgain(text)
    return text
end
```
2. Comment the function with a description of both the function itself and the options, use the format shown in the example please. This will show up in your IDE when you hover over it(in another file too).

- Example:
```lua
-- A function that returns what you gave as input.<br>**text** : The text you want to return.
function SayAgain(text)
    return text
end
```

3. Add the function to the return array at the bottom of `tools.lua`.

- Example:
```lua
return {
    SayAgain = SayAgain,
    ...
}
```

You can now call the function from everywhere when you need it(as long as you 'require' `tools.lua`).


