PersistentVars = {}
Deathlink = true
DeathlinkStyleIn = ""
DeathlinkStyleOut = ""
PendingReceiveDeathlink = false
ApOutFile = "apOut.json"
ApInFile = "apIn.json"
SyncStyle = ""
TrapStyle = ""
PlayableChars = {"S_Player_Ifan_ad9a3327-4456-42a7-9bf4-7ad60cc9e54f",
                "S_Player_Beast_f25ca124-a4d2-427b-af62-df66df41a978",
                "S_Player_Lohse_bb932b13-8ebf-4ab4-aac0-83e6924e4295",
                "S_Player_RedPrince_a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f",
                "S_Player_Sebille_c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c",
                "S_Player_Fane_02a77f1f-872b-49ca-91ab-32098c443beb",
                "7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", -- p1 custom character
                "c451954c-73bf-46ce-a1d1-caa9bbdc3cfd", -- p2 custom character
                "41a06985-7851-4c29-8a78-398ccb313f39", -- p3 custom character
                "41a594ed-b768-4289-9f17-59f701cc6910", -- p4 custom character
                "S_GLO_Henchman_Fighter_3f44ca37-37db-4415-9c07-8a6a5043f4d9",
                "S_GLO_Henchman_Battlemage_771422fe-7f0a-4997-a600-66de69c75d80",
                "S_GLO_Henchman_Knight_3b4ec079-75be-4f79-8f4b-449c650d438d",
                "S_GLO_Henchman_Inquisitor_0d13b184-24a7-42e1-acf4-5728e92a25f9",
                "S_GLO_Henchman_Metamorph_0ab5b88b-368c-4303-b95f-0a34a9838d33",
                "S_GLO_Henchman_Wayfarer_32bccd3b-17ea-4daf-989a-141842293970",
                "S_GLO_Henchman_Shadowblade_83fcfdd1-3150-4080-9f69-5461ce57fee2",
                "S_GLO_Henchman_Rogue_0ea50c31-7f09-484e-aec1-2f8d5492e8cb",
                "S_GLO_Henchman_Ranger_9bb343ab-65fe-4a8b-b1b6-0d084f5444ee",
                "S_GLO_Henchman_Cleric_240a8377-e26c-4cfa-ac84-2a2e6369e9da",
                "S_GLO_Henchman_Enchanter_827b9f8c-6bd9-4f52-a2ab-7fe6c425bbe5",
                "S_GLO_Henchman_Witch_4c565d89-c00b-47ab-8335-9edfa9757971",
                "S_GLO_Henchman_Wizard_0539b874-7adc-4dfc-8258-bdbae55309ad",
                "S_GLO_Henchman_Conjurer_12837117-e53e-4997-9b02-a1d2aa89419a"
}

DeathlinkTriggers = {["ad9a3327-4456-42a7-9bf4-7ad60cc9e54f"] = true,
                     ["f25ca124-a4d2-427b-af62-df66df41a978"] = true,
                     ["bb932b13-8ebf-4ab4-aac0-83e6924e4295"] = true,
                     ["a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f"] = true,
                     ["c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c"] = true,
                     ["02a77f1f-872b-49ca-91ab-32098c443beb"] = true,
                     ["7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe"] = true,
                     ["c451954c-73bf-46ce-a1d1-caa9bbdc3cfd"] = true,
                     ["41a06985-7851-4c29-8a78-398ccb313f39"] = true,
                     ["41a594ed-b768-4289-9f17-59f701cc6910"] = true,
                     ["3f44ca37-37db-4415-9c07-8a6a5043f4d9"] = true,
                     ["771422fe-7f0a-4997-a600-66de69c75d80"] = true,
                     ["3b4ec079-75be-4f79-8f4b-449c650d438d"] = true,
                     ["0d13b184-24a7-42e1-acf4-5728e92a25f9"] = true,
                     ["0ab5b88b-368c-4303-b95f-0a34a9838d33"] = true,
                     ["32bccd3b-17ea-4daf-989a-141842293970"] = true,
                     ["83fcfdd1-3150-4080-9f69-5461ce57fee2"] = true,
                     ["0ea50c31-7f09-484e-aec1-2f8d5492e8cb"] = true,
                     ["9bb343ab-65fe-4a8b-b1b6-0d084f5444ee"] = true,
                     ["240a8377-e26c-4cfa-ac84-2a2e6369e9da"] = true,
                     ["827b9f8c-6bd9-4f52-a2ab-7fe6c425bbe5"] = true,
                     ["4c565d89-c00b-47ab-8335-9edfa9757971"] = true,
                     ["0539b874-7adc-4dfc-8258-bdbae55309ad"] = true,
                     ["12837117-e53e-4997-9b02-a1d2aa89419a"] = true
}

DeathlinkNames = {["ad9a3327-4456-42a7-9bf4-7ad60cc9e54f"] = "Ifan",
                     ["f25ca124-a4d2-427b-af62-df66df41a978"] = "Beast",
                     ["bb932b13-8ebf-4ab4-aac0-83e6924e4295"] = "Lohse",
                     ["a26a1efb-cdc8-4cf3-a7b2-b2f9544add6f"] = "Red Prince",
                     ["c8d55eaf-e4eb-466a-8f0d-6a9447b5b24c"] = "Sebille",
                     ["02a77f1f-872b-49ca-91ab-32098c443beb"] = "Fane",
                     ["7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe"] = "Hero",
                     ["c451954c-73bf-46ce-a1d1-caa9bbdc3cfd"] = "Player 2 Hero",
                     ["41a06985-7851-4c29-8a78-398ccb313f39"] = "Player 3 Hero",
                     ["41a594ed-b768-4289-9f17-59f701cc6910"] = "Player 4 Hero",
                     ["3f44ca37-37db-4415-9c07-8a6a5043f4d9"] = "Nestor",
                     ["771422fe-7f0a-4997-a600-66de69c75d80"] = "Ravella",
                     ["3b4ec079-75be-4f79-8f4b-449c650d438d"] = "Yastara",
                     ["0d13b184-24a7-42e1-acf4-5728e92a25f9"] = "Straffan",
                     ["0ab5b88b-368c-4303-b95f-0a34a9838d33"] = "Trxyl",
                     ["32bccd3b-17ea-4daf-989a-141842293970"] = "Morrgen",
                     ["83fcfdd1-3150-4080-9f69-5461ce57fee2"] = "Shanova",
                     ["0ea50c31-7f09-484e-aec1-2f8d5492e8cb"] = "Pestilence",
                     ["9bb343ab-65fe-4a8b-b1b6-0d084f5444ee"] = "Veeros",
                     ["240a8377-e26c-4cfa-ac84-2a2e6369e9da"] = "Myrella",
                     ["827b9f8c-6bd9-4f52-a2ab-7fe6c425bbe5"] = "Aurnia",
                     ["4c565d89-c00b-47ab-8335-9edfa9757971"] = "Taylia",
                     ["0539b874-7adc-4dfc-8258-bdbae55309ad"] = "Forrex",
                     ["12837117-e53e-4997-9b02-a1d2aa89419a"] = "Francesca"
}

--Animals_Chicken_A_ Animals_Cow_A_
-- c451954c-73bf-46ce-a1d1-caa9bbdc3cfd p2
-- 41a06985-7851-4c29-8a78-398ccb313f39 p3
-- 41a594ed-b768-4289-9f17-59f701cc6910 p4

-- S_GLO_Henchman_Fighter_3f44ca37-37db-4415-9c07-8a6a5043f4d9 Nestor
-- S_GLO_Henchman_Battlemage_771422fe-7f0a-4997-a600-66de69c75d80 Ravella
-- S_GLO_Henchman_Knight_3b4ec079-75be-4f79-8f4b-449c650d438d Yastara
-- S_GLO_Henchman_Inquisitor_0d13b184-24a7-42e1-acf4-5728e92a25f9 Straffan
-- S_GLO_Henchman_Metamorph_0ab5b88b-368c-4303-b95f-0a34a9838d33 Trxyl
-- S_GLO_Henchman_Wayfarer_32bccd3b-17ea-4daf-989a-141842293970 Morrgen
-- S_GLO_Henchman_Shadowblade_83fcfdd1-3150-4080-9f69-5461ce57fee2 Shanova
-- S_GLO_Henchman_Rogue_0ea50c31-7f09-484e-aec1-2f8d5492e8cb Pestilence
-- S_GLO_Henchman_Ranger_9bb343ab-65fe-4a8b-b1b6-0d084f5444ee Veeros
-- S_GLO_Henchman_Cleric_240a8377-e26c-4cfa-ac84-2a2e6369e9da Myrella
-- S_GLO_Henchman_Enchanter_827b9f8c-6bd9-4f52-a2ab-7fe6c425bbe5 Aurnia
-- S_GLO_Henchman_Witch_4c565d89-c00b-47ab-8335-9edfa9757971 attackerOwner Taylia
-- S_GLO_Henchman_Wizard_0539b874-7adc-4dfc-8258-bdbae55309ad Forrex
-- S_GLO_Henchman_Conjurer_12837117-e53e-4997-9b02-a1d2aa89419a Francesca

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

TrapEffect = {"POISONED",
              "BURNING",
              "ACID",
              "BLEEDING",
              "MUTED",
              "KNOCKED_DOWN",
              "FEAR",
              "BLIND",
              "SMELLY",
              "INFECTIOUS_DISEASED",
              "DECAYING_TOUCH",
              "LINGERING_WOUNDS",
              "DAMAGE_ON_MOVE",
              "DISARMED",
              "NECROFIRE",
              "STUNNED",
              "FROZEN",
              "CHICKEN",
              "COW",
              "CURSE",
              "CRIPPLED",
              "DISEASED",
              "DRUNK",
              "ENTANGLED",
              "MARKED",
              "PETRIFIED",
              "PLAGUE",
              "REMORSE",
              "SHOCKED",
              "SLEEPING",
              "SLOWED",
              "SUFFOCATING",
              "WEAK",
              "WEB"
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
                elseif(string.sub(v, 11, 12) == "ST") then
                    if(string.sub(v, 11, 24) == "ST_ArmorNormal") then
                        if(math.random(10) == 1) then --ST_Armor contain rings amulets and belts, execpt for ST_ArmorNormal for whatever reason, this is to artifically mimic the other armor tables
                            CharacterGiveReward(CharacterGetHostCharacter(), "ST_RingAmuletBelt", 1)
                            APSent[v] = true
                        else
                            CharacterGiveReward(CharacterGetHostCharacter(), "ST_ArmorNormal", 1)
                            APSent[v] = true
                        end
                    else
                        CharacterGiveReward(CharacterGetHostCharacter(), string.sub(v, 11), 1)
                        APSent[v] = true
                    end
                elseif(string.sub(v, 11, 14) == "Trap") then
                    local party = {}
                    for _, character in ipairs(PlayableChars) do
                        if(CharacterIsInPartyWith(character, CharacterGetHostCharacter()) == 1) then
                            table.insert(party, character)
                        end
                    end
                    if(string.sub(v, 15) == "Minor") then
                        if(TrapStyle == 0) then
                            for _, character in ipairs(party) do
                                ApplyStatus(character, TrapEffect[Random(34) + 1], 6.0, 1)
                                APSent[v] = true
                            end
                        elseif(TrapStyle == 1) then
                            ApplyStatus(party[Random(#party) + 1], TrapEffect[Random(34) + 1], 6.0, 1)
                            APSent[v] = true
                        end
                    elseif(string.sub(v, 15) == "Moderate") then
                        if(TrapStyle == 0) then
                            for _, character in ipairs(party) do
                                ApplyStatus(character, TrapEffect[Random(34) + 1], 12.0, 1)
                                APSent[v] = true
                            end
                        elseif(TrapStyle == 1) then
                            ApplyStatus(party[Random(#party) + 1], TrapEffect[Random(34) + 1], 12.0, 1)
                            APSent[v] = true
                        end
                    elseif(string.sub(v, 15) == "Severe") then
                        if(TrapStyle == 0) then
                            for _, character in ipairs(party) do
                                ApplyStatus(character, TrapEffect[Random(34) + 1], 18.0, 1)
                                APSent[v] = true
                            end
                        elseif(TrapStyle == 1) then
                            ApplyStatus(party[Random(#party) + 1], TrapEffect[Random(34) + 1], 18.0, 1)
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
                if(DeathlinkStyleIn ~= 2) then
                    local party = {}
                    for _, character in ipairs(PlayableChars) do
                        if(CharacterIsInPartyWith(character, CharacterGetHostCharacter()) == 1) then
                            table.insert(party, character)
                        end
                    end
                    if(DeathlinkStyleIn == 0) then
                        for _, character in ipairs(party) do
                            CharacterDie(character, 0, DeathType[Random(14) + 1], "NULL")
                        end
                    elseif(DeathlinkStyleIn == 1) then
                        CharacterDie(party[Random(#party) + 1], 0, DeathType[Random(14) + 1], "NULL")
                    end
                elseif(DeathlinkStyleIn == 2) then
                    CharacterDie(CharacterGetHostCharacter(), 0, DeathType[Random(14) + 1], "NULL")
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
        TrapStyle = read_option(Data, "trapStyle")
        if(Deathlink == 1) then
            Ext.Events.Tick:Subscribe(ReceiveDeathlink)
        end
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
    if(flag:sub(1, 12) == "QuestUpdate_" or flag:sub(1, 8) == "FTJ_SW_F" or flag:sub(1, 21) == "FTJ_SW_HelpedGratiana" or flag:sub(1, 24) == "FTJ_SW_DestroyedSoulJars" or flag:sub(1, 25) == "RC_BI_AncientForgeCrafted" or flag:sub(1, 39) == "RC_BF_CorneredSourcerer_HelpedMagisters" or flag:sub(1, 22) == "RC_MIL_PerformedRitual" or flag:sub(1, 23) == "RC_MIL_CompletedElfTest" or flag:sub(1, 20) == "RC_MIL_FailedElfTest") then
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
    print("defender: " .. tostring(defender) .. " attackerOwner: " .. tostring(attackerOwner))
    defender = Ext.GetCharacter(defender).MyGuid
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

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)