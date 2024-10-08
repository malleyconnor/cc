-- List of cryptic messages about Joseph Brown
local messages = {
    "Joseph Brown knows what you did...",
    "The whispers of Joseph Brown are growing louder...",
    "You can't hide from Joseph Brown forever...",
    "Joseph Brown is watching, always watching...",
    "The shadows move with Joseph Brown's command...",
    "Did you hear that? Joseph Brown is near...",
    "Joseph Brown never sleeps, but he dreams of you...",
    "Joseph Brown walks among the lost souls...",
    "When the clock strikes 3, Joseph Brown appears...",
    "The walls have ears, and they belong to Joseph Brown...",
    "Joseph Brown is closer than you think...",
    "The fog hides many things, including Joseph Brown...",
    "Joseph Brown has a message for you... Listen closely...",
    "The air grows cold, Joseph Brown is here...",
    "Joseph Brown's name is written in the dark corners of your mind...",
    "You can feel Joseph Brown's gaze, can't you?",
    "Joseph Brown is the reason you can't sleep at night...",
    "They say Joseph Brown was never buried...",
    "Joseph Brown's laughter echoes in the silence...",
    "There's no escape from Joseph Brown's reach...",
    "Joseph Brown waits in the shadows...",
    "Joseph Brown knows all your secrets...",
    "The dead speak of Joseph Brown...",
    "Joseph Brown's footsteps echo in the halls...",
    "You feel a chill, Joseph Brown is near...",
    "Joseph Brown has been here before, and he'll be back...",
    "The darkness is Joseph Brown's domain...",
    "Joseph Brown's name is whispered by the wind...",
    "Can you hear Joseph Brown's voice? It calls to you...",
    "The night belongs to Joseph Brown...",
    "Joseph Brown is the reason the lights flicker...",
    "The mirror shows Joseph Brown's reflection...",
    "Joseph Brown is closer than your shadow...",
    "The whispers grow louder... Joseph Brown is coming...",
    "Joseph Brown is always watching, from the corner of your eye...",
    "Joseph Brown's presence lingers in the air...",
    "The ground trembles as Joseph Brown approaches...",
    "Joseph Brown's voice echoes in the void...",
    "The clock ticks... Joseph Brown draws nearer...",
    "Joseph Brown's eyes are everywhere...",
    "The darkness speaks of Joseph Brown...",
    "Joseph Brown's name is carved into the stone...",
    "The night is silent... but Joseph Brown is not...",
    "Joseph Brown's shadow looms over you...",
    "The whispers speak only of Joseph Brown...",
    "Joseph Brown walks in the footsteps of the lost...",
    "The fog is thick, but Joseph Brown sees all...",
    "Joseph Brown's name is etched into your nightmares...",
    "Joseph Brown watches from the corners of your mind...",
    "You feel a presence... Joseph Brown is here...",
    "Joseph Brown's touch is cold as ice...",
    "The wind carries Joseph Brown's name...",
    "Joseph Brown is the whisper in the dark...",
    "The shadows hide Joseph Brown's true form...",
    "Joseph Brown's eyes pierce the darkness...",
    "The silence is broken by Joseph Brown's whispers...",
    "Joseph Brown's name is spoken by the dead...",
    "The walls close in... Joseph Brown is near...",
    "Joseph Brown's footsteps echo in the dark...",
    "The darkness is alive with Joseph Brown's presence...",
    "Joseph Brown is the reason you feel uneasy...",
    "The night is quiet... but Joseph Brown is not...",
    "Joseph Brown's name is written in the stars...",
    "The shadows grow longer... Joseph Brown is coming...",
    "Joseph Brown knows your fears...",
    "Joseph Brown is the reason the door creaks...",
    "The night hides many things, including Joseph Brown...",
    "Joseph Brown's voice is a whisper in the wind...",
    "The darkness knows Joseph Brown's name...",
    "Joseph Brown walks in the night...",
    "Joseph Brown's eyes glow in the dark...",
    "The air is thick with Joseph Brown's presence...",
    "Joseph Brown is the reason the floorboards creak...",
    "The night is still... but Joseph Brown is not...",
    "Joseph Brown's name is written in the dust...",
    "The shadows conceal Joseph Brown's true form...",
    "Joseph Brown is the reason you can't breathe...",
    "The darkness whispers Joseph Brown's name...",
    "Joseph Brown is the chill down your spine...",
    "The night belongs to Joseph Brown...",
    "Joseph Brown's presence is felt, not seen...",
    "The silence is deafening... Joseph Brown is here...",
    "Joseph Brown's name is carved into the walls...",
    "The shadows shift... Joseph Brown is near...",
    "Joseph Brown is the reason you feel watched...",
    "The night is long... but Joseph Brown waits...",
    "Joseph Brown's name is spoken in the dark...",
    "The darkness hides many things, including Joseph Brown...",
    "Joseph Brown is the reason you hear footsteps...",
    "The shadows are alive with Joseph Brown's presence...",
    "Joseph Brown's voice is a whisper in your ear...",
    "The night is cold... but Joseph Brown is colder...",
    "Joseph Brown's name is written in blood...",
    "The darkness speaks of Joseph Brown's deeds...",
    "Joseph Brown is the reason the lights flicker...",
    "The shadows hide Joseph Brown's true intentions...",
    "Joseph Brown's presence is felt in the air...",
    "The night is quiet... but Joseph Brown's whispers are not...",
}

-- Function to send a random cryptic message about Joseph Brown
local function sendCrypticMessage()
    local message = messages[math.random(#messages)]
    -- print(message)
    -- Uncomment the line below to send the message in chat
    -- Use chat.post if your turtle is advanced and connected to a chat API
    chat.post(message)
end

-- Main loop to send a message every 5 minutes
while true do
    sendCrypticMessage()
    sleep(300) -- Wait 5 minutes (300 seconds)
end
