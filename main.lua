getgenv().amount_of_healing = 20; -- Change the number if you want to heal more HP

getgenv().key = game:GetService("UserInputService");


function notify(title,content,duration,...)
    game.StarterGui:SetCore("SendNotification", {
      Title = title;
      Text = content;
      Icon = "";
      Duration = duration;
    });
  end

player = game:GetService("Players").LocalPlayer

function heal(amount)
    spawn(function ()
        local args = {
            [1] = amount
        }
        game.Chat:Chat(player.Character.Head, "Fucking heal me!", Enum.ChatColor.White)
        for v=0, 4 do
            game:GetService("ReplicatedStorage").NewHeal:FireServer(unpack(args))
            wait(1)
        end
    end)
end

notify("CrossRoad Combat Script", "Made by Takaso - Press X", 4)

key.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.X then
        heal(amount_of_healing);
    end
end)
