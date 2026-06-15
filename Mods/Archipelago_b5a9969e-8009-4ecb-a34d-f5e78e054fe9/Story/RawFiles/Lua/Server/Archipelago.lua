PersistentVars = {}
Deathlink = true
DeathlinkStyleIn = ""
DeathlinkStyleOut = ""
PendingReceiveDeathlink = false
ApOutFile = "apOut.json"
ApInFile = "apIn.json"
SyncStyle = ""
PlayableChars = {"S_Player_Ifan_ad9a3327-4456-42a7-9bf4-7ad60cc9e54f",
                "S_Player_Beast_f25ca124-a4d2-427b-af62-df66df41a978",
                "S_Player_Lohse_bb932b13-8ebf-4ab4-aac0-83e6924e4295",
                "S_Player_RedPrince_a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f",
                "S_Player_Sebille_c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c",
                "S_Player_Fane_02a77f1f-872b-49ca-91ab-32098c443beb",
                "7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe" --All encompassing custom character
}

DeathlinkTriggers = {["S_Player_Ifan_ad9a3327-4456-42a7-9bf4-7ad60cc9e54f"] = true,
                     ["S_Player_Beast_f25ca124-a4d2-427b-af62-df66df41a978"] = true,
                     ["S_Player_Lohse_bb932b13-8ebf-4ab4-aac0-83e6924e4295"] = true,
                     ["S_Player_RedPrince_a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f"] = true,
                     ["S_Player_Sebille_c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c"] = true,
                     ["S_Player_Fane_02a77f1f-872b-49ca-91ab-32098c443beb"] = true,
                     ["7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe"] = true
}

DeathlinkNames = {["S_Player_Ifan_ad9a3327-4456-42a7-9bf4-7ad60cc9e54f"] = "Ifan",
                     ["S_Player_Beast_f25ca124-a4d2-427b-af62-df66df41a978"] = "Beast",
                     ["S_Player_Lohse_bb932b13-8ebf-4ab4-aac0-83e6924e4295"] = "Lohse",
                     ["S_Player_RedPrince_a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f"] = "Red Prince",
                     ["S_Player_Sebille_c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c"] = "Sebille",
                     ["S_Player_Fane_02a77f1f-872b-49ca-91ab-32098c443beb"] = "Fane",
                     ["7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe"] = "Hero"
}

DeathType = {"None",
             "Physical",
             "Piercing",
             "Arrow",
             "DoT",
             "Incinerate",
             "Acid",
             "Electrocution",
             "FrozenShatter",
             "PetrifiedShatter",
             "Explode",
             "Hang",
             "KnockedDown",
             "LifeTime"
}

local function ClearState()
    Ext.IO.SaveFile(ApOutFile, "[]")
    Ext.IO.SaveFile(ApInFile, "[]")
    Ext.IO.SaveFile("deathlinkOut.json", "[]")
    Ext.IO.SaveFile("deathlinkIn.json", "[]")
    PersistentVars["ApSent"] = {}
end

local function read_option(data, key)
    if(data == nil) then
        return false
    end
    local v = data[key]
    if(v == nil) then
        return false
    end
    return v
end

function SyncArchipelago()
    local unparsed_in = Ext.IO.LoadFile(ApInFile)
    if(unparsed_in) then
        local APSent = PersistentVars['APSent']
        if(not APSent) then
            APSent = {}
        end
        local data_in = Ext.Json.Parse(unparsed_in)
        if(data_in == nil) then
            print("Failed to parse json")
            return
        end
        for k, v in ipairs(data_in) do
            local isAlreadySent = false
            if (APSent[v] == true) then
                isAlreadySent = true
            end
            if(not isAlreadySent) then
                if(string.sub(v, 11, 17) == "levelUp") then
                    for _, character in ipairs(PlayableChars) do
                        CharacterLevelUp(character)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 46) == "1c3c9c74-34a1-4685-989e-410dc080be6f") then
                    ItemTemplateAddTo(v, CharacterGetHostCharacter(), 200, 1)
                    APSent[v] = true
                elseif(string.sub(v, 11, 24) == "attributePoint") then
                    for _, character in ipairs(PlayableChars) do
                        CharacterAddAttributePoint(character, 1)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 28) == "combatAbilityPoint") then
                    for _, character in ipairs(PlayableChars) do
                        CharacterAddAbilityPoint(character, 1)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 27) == "civilAbilityPoint") then
                    for _, character in ipairs(PlayableChars) do
                        CharacterAddCivilAbilityPoint(character, 1)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 21) == "talentPoint") then
                    for _, character in ipairs(PlayableChars) do
                        CharacterAddTalentPoint(character, 1)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 24) == "maxSourcePoint") then
                    for _, character in ipairs(PlayableChars) do
                        if(CharacterGetMaxSourcePoints(character) ~= nil) then
                            CharacterOverrideMaxSourcePoints(character, CharacterGetMaxSourcePoints(character) + 1)
                            APSent[v] = true
                        end
                    end
                else
                    ItemTemplateAddTo(v, CharacterGetHostCharacter(), 1, 1)
                    APSent[v] = true
                end
            end
        end
        PersistentVars['APSent'] = APSent
    end
end

function ReceiveDeathlink()
    local unparsed = Ext.IO.LoadFile("deathlinkIn.json")
    if(unparsed and unparsed ~= "") then
        local death = Ext.Json.Parse(unparsed)
        if(death == nil) then
            print("Failed to parse json")
            return
        end
        for k, v in ipairs(death) do
            if(v == "Deathlink") then
                PendingReceiveDeathlink = true
                print(DeathlinkStyleIn)
                if(DeathlinkStyleIn ~= 2) then
                    local party = {}
                    for _, character in ipairs(PlayableChars) do
                        if(CharacterIsInPartyWith(character, CharacterGetHostCharacter()) == 1) then
                            table.insert(party, character)
                            print(character .. " added to party")
                        end
                    end
                    if(DeathlinkStyleIn == 0) then
                        for _, character in ipairs(party) do
                            CharacterDie(character, 0, DeathType[Random(14)], "NULL")
                        end
                    elseif(DeathlinkStyleIn == 1) then
                        CharacterDie(party[Random(4)], 0, DeathType[Random(14)], "NULL")
                    end
                elseif(DeathlinkStyleIn == 2) then
                    CharacterDie(CharacterGetHostCharacter(), 0, DeathType[Random(14)], "NULL")
                end
                Ext.IO.SaveFile("deathlinkIn.json", "[]")
            end
        end
    end
end

function OnSessionLoaded()
    local unparsed = Ext.IO.LoadFile("apOptions.json")
    if(unparsed) then
        Data = Ext.Json.Parse(unparsed)
        if(Data == nil) then
            return
        end
        Deathlink = read_option(Data, "death_link")
        SyncStyle = read_option(Data, "syncOption")
        DeathlinkStyleIn = read_option(Data, "deathlinkStyleIn")
        DeathlinkStyleOut = read_option(Data, "deathlinkStyleOut")
        if(Deathlink == 1) then
            Ext.Events.Tick:Subscribe(ReceiveDeathlink)
        end
        print(SyncStyle)
        if(SyncStyle == 1) then --tick
            print("subbed to tick")
            Ext.Events.Tick:Subscribe(SyncArchipelago)
        end
        local new_seed = Data.seed_name
        if(type(new_seed) == "string" and new_seed ~= "") then
            local stored_seed = PersistentVars['SeedName']
            ApOutFile = new_seed .. "apOut.json"
            ApInFile = new_seed .. "apIn.json"
            if(stored_seed ~= new_seed) then
                PersistentVars['SeedName'] = new_seed
                print("New game/new seed, resetting ap files")
                ClearState()
            end
        end
    end
end

Ext.Osiris.RegisterListener("ObjectFlagSet", 3, "after", function(flag, speaker, _dialogInstance)
    if(flag:sub(1, 12) == "QuestUpdate_") then
        local row = Osi.DB_QuestDef_CloseEvent:Get(nil, flag)
        if(row) then
            if(row[1] ~= nil) then
                local quest = row[1][1]
                local unparsed = Ext.IO.LoadFile(ApOutFile)
                local data = {}
                print("Completed:" .. "Quest-" .. quest)
                if(unparsed) then
                    data = Ext.Json.Parse(unparsed)
                    if(data == nil) then
                        print("Failed to parse JSON")
                        return
                    end
                end
                local needsToAdd = true
                for k, v in ipairs(data) do
                    if (v == "Quest-" .. quest) then
                        needsToAdd = false
                        break
                    end
                end
                if(needsToAdd) then
                    table.insert(data, "Quest-" .. quest)
                    Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
                end
            end
        end
    end
end)

Ext.Osiris.RegisterListener("GameStarted", 2, "after", function(level, isEditorMode)
    if(level == "TUT_Tutorial_A" and SyncStyle == 0) then
        CharacterAddSkill(CharacterGetHostCharacter(), "Target_Archipelago Sync", 0)
    end
end)

Ext.Osiris.RegisterListener("CharacterUsedSkill", 4, "after", function(character, skill, skillType, skillElement)
    if(SyncStyle == 0 and skill == "Target_Archipelago Sync") then
        SyncArchipelago()
    end
end)

Ext.Osiris.RegisterListener("CharacterKilledBy", 3, "after", function(defender, attackerOwner, attacker)
    local kill = defender
    local unparsed = Ext.IO.LoadFile(ApOutFile)
    local data = {}
    if(unparsed) then
        data = Ext.Json.Parse(unparsed)
        if(data == nil) then
            print("Failed to parse JSON")
            return
        end
    end
    local needsToAdd = true
    for k, v in ipairs(data) do
        if (v == defender) then
            needsToAdd = false
            break
        end
    end
    if(needsToAdd) then
        table.insert(data, defender)
        Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
    end
    print("defender: " .. tostring(defender) .. " attackerOwner: " .. tostring(attackerOwner))
    if(DeathlinkTriggers[defender] and CharacterIsPartyMember(defender) == 1) then
        local party = {}
        if(DeathlinkStyleOut == 0) then
            for _, character in ipairs(PlayableChars) do
                if(CharacterIsInPartyWith(character, defender) == 1) then
                    table.insert(party, character)
                end
            end
            local deadMembers = 0
            for _, character in ipairs(party) do
                if(CharacterIsDead(character) == 1) then
                    deadMembers = deadMembers + 1
                end
            end
            if(deadMembers == #party) then
                if(PendingReceiveDeathlink) then
                    PendingReceiveDeathlink = false
                elseif(Deathlink == 1) then
                    Ext.IO.SaveFile("deathlinkOut.json", '["' .. DeathlinkNames[defender] .. '"]')
                end
            end
        elseif(DeathlinkStyleOut == 1) then
            if(PendingReceiveDeathlink) then
                PendingReceiveDeathlink = false
            elseif(Deathlink == 1) then
                Ext.IO.SaveFile("deathlinkOut.json", '["' .. DeathlinkNames[defender] .. '"]')
            end
        end
    end
end)

local function QuestUpdateRecieved(msg)
    -- print(msg)
    -- local unparsed = Ext.IO.LoadFile(ApOutFile)
    -- local data = {}
    -- if(unparsed) then
    --     data = Ext.Json.Parse(unparsed)
    --     if(data == nil) then
    --         print("Failed to parse json")
    --         return
    --     end
    -- end
    -- local needsToAdd = true
    -- for k, v in ipairs(data) do
    --     if(v == msg) then
    --         needsToAdd = false
    --         break
    --     end
    -- end
    -- if(needsToAdd) then
    --     table.insert(data, msg)
    --     Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
    -- end
end
--cant remove this until you undo the osiris script editing
Ext.NewCall(QuestUpdateRecieved, "ARP_EXT_QuestUpdate", "(STRING)_Msg")

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)