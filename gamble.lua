local totalBet = 0
local totalWon = 0

function getBet()
    ::continue::
    print("Please enter your bet")
    bet = tonumber(io.read())
    if bet ~= number and bet>0 then
     else print("Only numbers greater than 0 please.")
     goto continue
    end
end

function pickNumber()
    print("Good! Now, please pick a number 1-100.")
    ::pickagain::
    pick = tonumber(io.read())
    if pick ~= number then
     if pick <=100 and pick >=1 then
      else print("Only numbers 1-100 please.")
      goto pickagain
     end
    else print("Only numbers 1-100 please.")
    goto pickagain
    end
end

function rng()
    generated = math.random(1,100)
    print("Generated the number: "..generated)
end

function onex()
    win = bet*1
    print("You were within 25. At least you got your bet back.")
end

function twox()
    win = bet*2
    print("You were within 10! You win: "..win)
end

function threex()
    win = bet*3
    print("You were within 5!! You win: "..win)
end

function tallyUp()
    totalBet = totalBet + bet
    totalWon = totalWon + win
    print("This machine has collected "..totalBet.." in bets.")
    print("This machine has given out "..totalWon.." in winnings.")
end

while true do
 getBet()
 pickNumber()
 rng()
 if pick > generated-6 and pick < generated+6 then
     threex()
 elseif pick > generated-11 and pick < generated+11 then
     twox()
 elseif pick > generated-26 and pick < generated+26 then
     onex()
 else print("You didn't win. Better luck next time.")
 win = 0
 end
 tallyUp()
end