ItemNames = Ext.Require("Server/itemNames.lua")
Skills = Ext.Require("Server/skills.lua")
Ext.Require("Server/Quests.lua")
PersistentVars = {}
PersistentVars["FTJWAYP"] = {}
PersistentVars["RCWAYP"] = {}
PersistentVars["COSWAYP"] = {}
PersistentVars["ARXWAYP"] = {}
PersistentVars["FTJKEY"] = 0
PersistentVars["RCKEY"] = 0
PersistentVars["COSKEY"] = 0
PersistentVars["ARXKEY"] = 0
PersistentVars["barriersToRemove"] = {}
Deathlink = true
DeathlinkStyleIn = ""
DeathlinkStyleOut = ""
PendingReceiveDeathlink = false
ApOutFile = "apOut.json"
ApInFile = "apIn.json"
SyncStyle = ""
TrapStyle = ""
RandomClassExt = ""
ContainerSanity = ""
EnableLevelTeleport = ""
Act1Keys = ""
Act2Keys = ""
Act3Keys = ""
Act4Keys = ""
RegionBarrier = ""
Act = -1
IncludedQuests = {}
PersistentVars["gaveQuests"] = false
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
                     ["7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe"] = "Godwoken",
                     ["c451954c-73bf-46ce-a1d1-caa9bbdc3cfd"] = "Player 2 Godwoken",
                     ["41a06985-7851-4c29-8a78-398ccb313f39"] = "Player 3 Godwoken",
                     ["41a594ed-b768-4289-9f17-59f701cc6910"] = "Player 4 Godwoken",
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

RegionNames = {
    "FortJoy",
    "TheHollowMarshes",
    "NorthEastReapersEye",
    "Driftwood",
    "Stonegarden",
    "ReapersBluffs",
    "Cloisterwood",
    "TheMeadows",
    "TheCullwoods",
    "ParadiseDowns",
    "TheBlackpits",
    "BloodmoonIsland",
    "Arx",
    "TombOfLucian"
}

FortJoyBarrier = {
    "4636d0d7-3a41-468f-9cc5-ba106ff279df",
    "a15cd716-e28e-4c3c-b645-0aeb26532708",
    "b869cd30-a57b-499b-8909-971dafa5e7ca",
    "7857979e-b7f7-4171-85a3-d48fd3939f7f",
    "428de79d-f3e1-41d7-99ca-9dd741c6b0c4",
    "47c981f3-df7f-468c-9a3f-15d0a5fdbbc1",
    "a763a74f-b3b0-45ea-9425-c17646c4e28e",
    "4f490f13-5301-4d53-9c4f-1ae9c05cab44",
    "dc15c56f-687b-4f6a-b532-ef9efc8b1463",
    "391f136e-0f40-42ff-8565-ec90e92c0526",
    "84964705-f482-4718-9d9f-3b89109cd69f"
}

TheHollowMarshesBarrier = {
    "96ecd1e4-c416-44c6-97d5-c1a2cbd25155",
    "a374ccf7-14ac-4190-8753-2c967cb757ba",
    "8badf350-d43a-4272-bda3-86e532e413e5",
    "2c79f348-1907-43af-aabf-0e5541dff474",
    "4b065b91-00d3-4da5-a734-6885dbdda692",
    "6f3f36af-4826-4aa8-b2f0-d08ad634533d",
    "1cc1c486-645b-4e7e-8cde-72fba7d47982"
}

NorthEastReapersEyeBarrier = {
    "c7da1d0d-1911-4483-a9ea-34222ba1490e"
}

DriftwoodBarrier = {
    "a13d06e1-b5ae-4550-90d2-ff3eb182409e",
    "66070936-75e8-473f-af1f-b0f618fc6524",
    "d16dfb02-b3ff-4940-89ee-8eaeb4eaf12b",
    "1826f64f-ebd5-41c9-9f37-870303ba4eb9",
    "1a5105ad-7356-48f0-93af-21dd8d52dd4b"
}

StonegardenBarrier = {
    "97133d76-1328-49ad-bbb7-15681b6e2fb0",
    "9384ba81-c981-4fcf-9732-237b1733182a",
    "977d0acf-8040-46e2-a9ce-5f0bd1e5c505",
    "45305f17-893c-4ba1-89a4-c00b2a75150b",
    "c03653f9-f413-4a00-a575-a4743de850f8",
    "b6a98543-1c60-420d-8ecf-ffa1f8a1d309"
}

ReapersBluffsBarrier = {
    "693f05dc-fdfc-4ce8-88a5-9a063cee9215",
    "0a4da09b-6616-4d9e-8dbc-059859323e4d",
    "10864d68-bdb2-4075-8129-1b8c5e736b55",
    "0ddbe1b8-30d4-4ff2-9802-15ec25eb51f1",
    "7149423f-0b0c-43b7-a74c-0a0c803afd27"
}

CloisterwoodBarrier = {
    "2175f817-2a08-4ddd-9d9d-f8ebe5dc5c63",
    "c10837fb-8b5d-40e9-b083-cfcd3eb439a4",
    "9b36d8d8-aeb2-4e2a-8199-7936f59fed10"
}

TheMeadowsBarrier = {
    "19aae6ea-4d4c-4e9b-86a4-2709625b77c0",
    "045bb7c2-4032-4233-b590-7301db9aa36c",
    "32ee8d3c-3abb-4959-b59c-e21eb090496e",
    "d4d17b92-6961-4357-9370-314fd4081efb",
    "0ab4b212-8a0f-404e-8653-de875869298c",
    "a0eb377b-53b3-47da-a9c2-cff075169b7c",
    "12d201fb-4bef-464a-a171-9562432c2450",
    "47db7523-f979-4bc4-9922-9ebaa18fc1cb",
    "088ba017-4325-40f9-91ae-e54362ba30fd",
    "2952f160-9559-4bfa-b877-48870d90a6ab"
}

TheCullwoodsBarrier = {
    "72d2e880-8400-46f1-ac44-613f0f632bbb",
    "7fdd86a4-ca78-4fc5-a46b-c212a616a456",
    "5e687511-e1f1-4de6-a98a-89915626266b",
    "51022b2a-3a90-4990-a68e-bf12f225c6da",
    "8349cfed-644e-4999-bc36-dde75c3024d8",
    "56c685ef-ce15-4a3e-ba88-c587af187d2b",
    "6b8c141e-cb62-404d-ba08-f19bf675509c"
}

ParadiseDownsBarrier = {
    "4552a2de-610f-48b9-994d-aca41b60c029",
    "d023c74f-d68d-457c-bab9-c02c6e52b2a6",
    "67057800-819b-4b6b-977b-39def25bd6a1",
    "c21c859b-f9cf-4b78-b403-bb5df63c9bec"
}

TheBlackpitsBarrier = {
    "2bb38ee0-e285-4d1b-adc5-c40c36acaaa3"
}

BloodmoonIslandBarrier = {
    "4fda4b98-a37f-4bab-92d3-fd7fdfdd6fea",
    "f6a9354c-16af-47a2-8105-1f0262d1683c"
}

ArxBarrier = {
    "b797d428-91a3-4336-b084-6bfe5f2dbc1d"
}

TombOfLucianBarrier = {
    "d8f88002-54dc-44fb-bb99-7f229816ee87",
    "efd24dc0-494c-494f-893e-8f7d40f5849f",
    "1756ba45-655c-4dfb-807a-fbbd9e59ce42"
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

-- CharacterTeleportPartiesToTrigger("TRIGGERGUID_StartPoint_000__000_fe2995bf-aa16-8ce7-33a2-8cb8cf228152", "")

-- StartPoint_000__000_fe2995bf-aa16-8ce7-33a2-8cb8cf228152 merryweather
-- StartPoint_001_34d67d87-441c-427d-97bb-4cc506b42fe0 fort joy
-- StartPoint_000_e30fe0c4-9b40-4040-9670-e8edd53a34ce reapers coast
-- S_CoS_LV_RegionStart_8c00afb8-43af-4de7-953a-a7456f996a4c nameless isle
-- StartPoint_000__001_ARX_Harbour_Dev_000_ARX_Main_Rework_000_fb573f96-d837-0033-4143-3bf31d88ae49 arx

-- ARP_LevelTP_c1147016-9e07-4980-b32b-556cb1141d8c tele item

-- Osi.proc_UnlockWaypoint("WAYP_FTJ_ShrineToTheSeven", CharacterGetHostCharacter())

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
              "DAMAGE_ON_MOVE",
              "DISARMED",
              "NECROFIRE",
              "STUNNED",
              "FROZEN",
              "CHICKEN",
              "COW",
              "CURSED",
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

local function loadParse(file)
    local unparsed = Ext.IO.LoadFile(file)
    if(unparsed) then
        local data = Ext.Json.Parse(unparsed)
        if(data == nil) then
            print("Failed to parse JSON")
            return false
        end
        return data
    end
    return false
end

function ContainerCheck(container)
    print("Checking container: " .. container)
    container = Ext.Entity.GetItem(container).MyGuid
    local data = loadParse(ApOutFile)
    if(not data) then
        return
    end
    local needsToAdd = true
    for k, v in ipairs(data) do
        if (v == container) then
            needsToAdd = false
            break
        end
    end
    if(needsToAdd) then
        table.insert(data, container)
        Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
    end
end

local function Notifiy(itemName, isUnique)
    local you = "<font color='#fcd203'>You</font>"
    local color = "<font color='ff3e6905'>"
    local meat = " have received an "
    local firstLetter = string.sub(itemName[1], 1, 1):lower()
    if(itemName == nil) then
        ShowNotification(CharacterGetHostCharacter(), you .. meat .. color .. " unknown item</font>")
        return
    end
    if(itemName[2] == "t") then
        color = "<font color='#fa8072'>"
    elseif(itemName[2] == "f") then
        color = "<font color='#00e1e1'>"
    elseif(itemName[2] == "u") then
        color = "<font color='#6d8be8'>"
    elseif(itemName[2] == "p") then
        color = "<font color='#af99ef'>"
    end
    if(itemName[1] == "Gold") then
        meat = " have received some "
    elseif(string.sub(itemName[1], -4) == "Gear") then
        meat = " have received a piece of "
    elseif(isUnique) then
        meat = " have received "
    elseif(firstLetter ~= "a" and firstLetter ~= "e" and firstLetter ~= "i" and firstLetter ~= "o" and firstLetter ~= "u") then
        meat = " have received a "
    end
    ShowNotification(CharacterGetHostCharacter(), you .. meat .. color .. itemName[1] .. "</font>")
end

local function handleKeyFlag(key, act)
    if(PersistentVars[key] == nil) then
        PersistentVars[key] = 0
    end
    PersistentVars[key] = PersistentVars[key] + 1
    if(act ~= nil) then
        if(PersistentVars[key] >= act) then
            GlobalSetFlag(key)
        end
    end
end

local function giveItem(item)
    if(item == "1c3c9c74-34a1-4685-989e-410dc080be6f") then
        ItemTemplateAddTo(item, CharacterGetHostCharacter(), 500, 0)
        return
    elseif(item == "86c59384-3686-4594-b485-507caed669a5") then
        PartySetFlag(CharacterGetHostCharacter(),"ARX_CreepyCraftsman_Has_SourceAmulet")
    elseif(item == "a266d681-bb84-4277-9889-9da15a4bf3b2") then
        PartySetFlag(CharacterGetHostCharacter(),"ARX_CreepyCraftsman_Has_Scroll")
    elseif(item == "24c696b8-5f2c-43da-9022-0d2979e289c2") then
        handleKeyFlag("FTJKEY", Act1Keys)
    elseif(item == "d5993f7a-4bf9-4d99-a30c-cff8f230a975") then
        handleKeyFlag("RCKEY", Act2Keys)
    elseif(item == "b95bc01d-699d-4ef7-9ff5-90c3365aa848") then
        handleKeyFlag("COSKEY", Act3Keys)
    elseif(item == "8e781970-3612-441b-bc17-996e43e56943") then
        handleKeyFlag("ARXKEY", Act4Keys)
    end
    ItemTemplateAddTo(item, CharacterGetHostCharacter(), 1, 0)
end

local function giveStats(stat)
    for _, character in ipairs(PlayableChars) do
        if(stat == "levelUp") then
            CharacterLevelUp(character)
        elseif(stat == "attributePoint") then
            CharacterAddAttributePoint(character, 1)
        elseif(stat == "combatAbilityPoint") then
            CharacterAddAbilityPoint(character, 1)
        elseif(stat == "civilAbilityPoint") then
            CharacterAddCivilAbilityPoint(character, 1)
        elseif(stat == "talentPoint") then
            CharacterAddTalentPoint(character, 1)
        elseif(stat == "maxSourcePoint") then
            local currentSource = CharacterGetMaxSourcePoints(character)
            if(currentSource ~= nil) then
                CharacterOverrideMaxSourcePoints(character, currentSource + 1)
                if(currentSource == 1) then
                    ObjectSetFlag(character, "GLO_Has2MaxMP")
                elseif(currentSource == 2) then
                    ObjectSetFlag(character, "GLO_Has3MaxMP")
                end
            end
        end
    end
end

local function giveGear(gear)
    if(gear == "ST_ArmorNormal") then
        if(math.random(10) == 1) then
            gear = "ST_RingAmuletBelt"
        end
    end
    CharacterGiveReward(CharacterGetHostCharacter(), gear, 1)
end

local function getParty()
    local party = {}
    for _, character in ipairs(PlayableChars) do
        if(CharacterIsInPartyWith(character, CharacterGetHostCharacter()) == 1) then
            table.insert(party, character)
        end
    end
    return party
end

local function giveTrap(trap)
    local severity = 0.0
    local type = ""
    local party = getParty()
    if(string.sub(trap, 1, 9) == "TrapMinor") then
        severity = 1.0
        type = string.sub(trap, 10)
    elseif(string.sub(trap, 1, 12) == "TrapModerate") then
        severity = 2.0
        type = string.sub(trap, 13)
    elseif(string.sub(trap, 1, 10) == "TrapSevere") then
        severity = 3.0
        type = string.sub(trap, 11)
    end
    if(TrapStyle == 0) then
        for _, character in ipairs(party) do
            if(type ~= "") then
                ApplyStatus(character, type, (6.0 * severity), 1)
            else
                ApplyStatus(character, TrapEffect[Random(34) + 1], (6.0 * severity), 1) --only kept around for backwards compatability
            end
        end
    elseif(TrapStyle == 1) then
        if(type ~= "") then
            ApplyStatus(party[Random(#party) + 1], type, (6.0 * severity), 1)
        else
            ApplyStatus(party[Random(#party) + 1], TrapEffect[Random(34) + 1], (6.0 * severity), 1) --only kept around for backwards compatability
        end
    end
end

local function unlockRegion(regionName)
    local regionBarriers = {}
    if(regionName == "FortJoy") then
        regionBarriers = FortJoyBarrier
    elseif(regionName == "TheHollowMarshes") then
        regionBarriers = TheHollowMarshesBarrier
    elseif(regionName == "NorthEastReapersEye") then
        regionBarriers = NorthEastReapersEyeBarrier
    elseif(regionName == "Driftwood") then
        regionBarriers = DriftwoodBarrier
    elseif(regionName == "Stonegarden") then
        regionBarriers = StonegardenBarrier
    elseif(regionName == "ReapersBluffs") then
        regionBarriers = ReapersBluffsBarrier
    elseif(regionName == "Cloisterwood") then
        regionBarriers = CloisterwoodBarrier
    elseif(regionName == "TheMeadows") then
        regionBarriers = TheMeadowsBarrier
    elseif(regionName == "TheCullwoods") then
        regionBarriers = TheCullwoodsBarrier
    elseif(regionName == "ParadiseDowns") then
        regionBarriers = ParadiseDownsBarrier
    elseif(regionName == "TheBlackpits") then
        regionBarriers = TheBlackpitsBarrier
    elseif(regionName == "BloodmoonIsland") then
        regionBarriers = BloodmoonIslandBarrier
    elseif(regionName == "Arx") then
        regionBarriers = ArxBarrier
    elseif(regionName == "TombOfLucian") then
        regionBarriers = TombOfLucianBarrier
    end
    for _, barrier in ipairs(regionBarriers) do
        ItemDestroy(barrier)
    end
    if(PersistentVars["barriersToRemove"] == nil) then
        PersistentVars["barriersToRemove"] = {}
    end
    PersistentVars["barriersToRemove"][regionName] = regionBarriers
end

function SyncArchipelago()
    if(IsGameLevel("") ~= 0) then
        local data = loadParse(ApInFile)
        if(not data) then
            return
        end
        local isUnique = false
        local APSent = PersistentVars['APSent']
        if(not APSent) then
            APSent = {}
        end
        for k, unparsedItem in ipairs(data) do
            local isAlreadySent = false
            if(APSent[unparsedItem] == true) then
                isAlreadySent = true
            end
            if(not isAlreadySent) then
                local parsedItem = ""
                if(string.sub(unparsedItem, 1, 5) == "Dupe-") then
                    parsedItem = string.sub(unparsedItem, 11)
                else
                    parsedItem = unparsedItem
                end
                if(parsedItem == "levelUp" or parsedItem == "attributePoint" or parsedItem == "combatAbilityPoint" or parsedItem == "civilAbilityPoint" or parsedItem == "talentPoint" or parsedItem == "maxSourcePoint") then
                    giveStats(parsedItem)
                elseif(string.sub(parsedItem, 1, 3) == "ST_" or string.sub(parsedItem, 1, 4) == "ARP_") then
                    if(string.sub(parsedItem, 1, 4) == "ARP_") then
                        isUnique = true
                    end
                    giveGear(parsedItem)
                elseif(string.sub(parsedItem, 1, 4) == "Trap") then
                    giveTrap(parsedItem)
                elseif(string.sub(parsedItem, 1, 6) == "Region") then
                    unlockRegion(string.sub(parsedItem, 7))
                else
                    giveItem(parsedItem)
                end
                Notifiy(ItemNames[parsedItem], isUnique)
                isUnique = false
                APSent[unparsedItem] = true
            end
        end
        PersistentVars['APSent'] = APSent
    end
end

function ReceiveDeathlink()
    if(IsGameLevel("") ~= 0) then
        local data = loadParse("deathlinkIn.json")
        if(not data) then
            return
        end
        for k, v in ipairs(data) do
            if(v == "Deathlink") then
                PendingReceiveDeathlink = true
                if(DeathlinkStyleIn ~= 2) then
                    local party = getParty()
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

local function rebuildIQ()
    for quest, _ in pairs(ReaperEyeQuests) do
        IncludedQuests[quest] = true
    end
    if(Act > 1) then
        for quest, _ in pairs(ReaperCoastQuests) do
            IncludedQuests[quest] = true
        end
        if(Act > 2) then
            for quest, _ in pairs(NamelessIsleQuests) do
                IncludedQuests[quest] = true
            end
            if(Act > 3) then
                for quest, _ in pairs(ArxQuests) do
                    IncludedQuests[quest] = true
                end
            end
        end
    end
end

function OnSessionLoaded()
    local data = loadParse("apOptions.json")
    if(not data) then
        return
    end
    Deathlink = data["death_link"]
    SyncStyle = data["syncOption"]
    DeathlinkStyleIn = data["deathlinkStyleIn"]
    DeathlinkStyleOut = data["deathlinkStyleOut"]
    TrapStyle = data["trapStyle"]
    ContainerSanity = data["containerSanity"]
    RandomClassExt = data["randomClassPool"]
    EnableLevelTeleport = data["enableLevelTeleport"]
    Act1Keys = data["act1Keys"]
    Act2Keys = data["act2Keys"]
    Act3Keys = data["act3Keys"]
    Act4Keys = data["act4Keys"]
    RegionBarrier = data["regionBarriers"]
    Act = data["goal"]
    if(Act > 3) then
        Act = Act - 4
    end
    Act = Act + 1
    rebuildIQ()
    if(Deathlink == 1) then
        Ext.Events.Tick:Subscribe(ReceiveDeathlink)
    end
    if(SyncStyle == 1) then
        Ext.Events.Tick:Subscribe(SyncArchipelago)
    end
    local new_seed = data["seed_name"]
    if(type(new_seed) == "string" and new_seed ~= "") then
        local stored_seed = PersistentVars['SeedName']
        ApOutFile = new_seed .. "apOut.json"
        ApInFile = new_seed .. "apIn.json"
        if(stored_seed ~= new_seed) then
            PersistentVars['SeedName'] = new_seed
            print("Overwriting outdated seed")
            Ext.IO.SaveFile("deathlinkOut.json", "[]")
            Ext.IO.SaveFile("deathlinkIn.json", "[]")
        end
    end
end

Ext.Osiris.RegisterListener("ObjectFlagSet", 3, "after", function(flag, speaker, _dialogInstance)
    if(flag:sub(1, 12) == "QuestUpdate_" or flag:sub(1, 8) == "FTJ_SW_F" or flag:sub(1, 21) == "FTJ_SW_HelpedGratiana" or flag:sub(1, 24) == "FTJ_SW_DestroyedSoulJars" or flag:sub(1, 25) == "RC_BI_AncientForgeCrafted" or flag:sub(1, 39) == "RC_BF_CorneredSourcerer_HelpedMagisters" or flag:sub(1, 22) == "RC_MIL_PerformedRitual" or flag:sub(1, 23) == "RC_MIL_CompletedElfTest" or flag:sub(1, 20) == "RC_MIL_FailedElfTest") then
        local row = Osi.DB_QuestDef_CloseEvent:Get(nil, flag)
        if(row) then
            if(row[1] ~= nil) then
                local quest = "Quest-" .. row[1][1]
                print("Completed:" .. quest)
                if(IncludedQuests[quest]) then
                    if(quest == "Quest-RC_MIL_AvengingSaheila") then
                        quest = "Quest-RC_MIL_RescuingSaheila"
                    elseif(quest == "Quest-ARX_HuntingForDallis_SUBB") then
                        quest = "Quest-ARX_HuntingForDallis_SUBA"
                    end
                    ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. quest .. "_qCom")
                    local data = loadParse(ApOutFile)
                    if(not data) then
                        return
                    end
                    print("Completed and added:" .. quest)
                    local needsToAdd = true
                    for k, v in ipairs(data) do
                        if (v == quest) then
                            needsToAdd = false
                            break
                        end
                    end
                    if(needsToAdd) then
                        table.insert(data, quest)
                        Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
                    end
                end
            end
        end
    end
end)

local function giveRandomSkill(character)
    local isAct2 = false
    CharacterRemoveSkill(character, "Shout_ARP_RandomFiller1")
    CharacterRemoveSkill(character, "Shout_ARP_RandomFiller2")
    CharacterRemoveSkill(character, "Shout_ARP_RandomFiller3")
    if(GetRegion(character) ~= "FJ_FortJoy_Main" and GetRegion(character) ~= "TUT_Tutorial_A") then
        isAct2 = true
        CharacterAddAttribute(character, "Memory", 2)
    end
    local index = {1, 2, 3, 4, 5}
    for _, i in ipairs(index) do
        if(CharacterHasSkill(character, Skills[i][1]) == 1) then
            CharacterRemoveSkill(character, Skills[i][1])
        end
    end
    index = {6, 7, 8, 9, 10, 11, 12}
    for _, i in ipairs(index) do
        if(CharacterHasSkill(character, Skills[i][1]) == 1) then
            CharacterRemoveSkill(character, Skills[i][1])
        end
    end
    local noOfSkills = 0
    local weaponRestriction = "None"
    local isDone = false
    local isWeaponSet = false
    local skillToAdd = ""
    local hasIncarnate = false
    while(not isDone) do
        if(RandomClassExt == 0) then
            skillToAdd = Skills[Random(40) + 13]
        elseif(RandomClassExt == 1) then
            skillToAdd = Skills[Random(144) + 13]
        end
        print("Attempting to add " .. skillToAdd[1] .. " with this weapon set " .. weaponRestriction)
        if((not isWeaponSet and CharacterHasSkill(character, skillToAdd[1]) == 0 and skillToAdd[3] ~= "IncarnateBuff") or (skillToAdd[3] == "IncarnateBuff" and hasIncarnate == true and not isWeaponSet and CharacterHasSkill(character, skillToAdd[1]) == 0)) then
            for _, ability in ipairs(skillToAdd[2]) do
                CharacterAddAbility(character, ability, 1)
            end
            CharacterAddSkill(character, skillToAdd[1], 0)
            print(skillToAdd[1] .. " has been added")
            noOfSkills = noOfSkills + 1
            if(skillToAdd[3] ~= "Incarnate" and skillToAdd[3] ~= "IncarnateBuff") then
                weaponRestriction = skillToAdd[3]
            elseif(skillToAdd[3] == "Incarnate") then
                hasIncarnate = true
            end
            if(weaponRestriction ~= "None") then
                isWeaponSet = true
            end
        elseif((skillToAdd[3] == "None" or skillToAdd[3] == weaponRestriction or (skillToAdd[3] == "IncarnateBuff" and hasIncarnate == true) or skillToAdd[3] == "Incarnate") and CharacterHasSkill(character, skillToAdd[1]) == 0) then
            for _, ability in ipairs(skillToAdd[2]) do
                CharacterAddAbility(character, ability, 1)
            end
            CharacterAddSkill(character, skillToAdd[1], 0)
            print(skillToAdd[1] .. " has been added")
            noOfSkills = noOfSkills + 1
            if(skillToAdd[3] == "Incarnate") then
                hasIncarnate = true
            end
        end
        if((noOfSkills == 3 and isAct2 == false) or (noOfSkills == 5 and isAct2 == true)) then
            isDone = true
        end
    end
    CharacterAddSkill(character, Skills[Random(7) + 6][1], 0)
    CharacterAddSkill(character, Skills[Random(5) + 1][1], 0)
end

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(character)
    if(CharacterHasSkill(character, "Shout_ARP_RandomFiller1") == 1) then
        giveRandomSkill(character)
    end
end)

local function restoreWaypoints(region)
    local party = getParty()
    if(PersistentVars[region] ~= nil) then
        for key, value in pairs(PersistentVars[region]) do
            if(value) then
                print("Restoring waypoint: " .. key)
                for _, character in ipairs(party) do
                    Osi.proc_UnlockWaypoint(key, character)
                end
            end
        end
    end
end

local function syncBarriers()
    if(PersistentVars["barriersToRemove"] ~= nil) then
        for name, region in pairs(PersistentVars["barriersToRemove"]) do
            for _, barrier in ipairs(region) do
                ItemDestroy(barrier)
            end
        end
    end
end

local function removeAllBarriers()
    for _, region in ipairs(RegionNames) do
        unlockRegion(region)
    end
end

local function syncQuests()
    local data = loadParse(ApOutFile)
    if(not data) then
        return
    end
    for _, check in ipairs(data) do
        ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. check .. "_qCom")
    end
end

local function initializeQuests()
    for quest, _ in pairs(ReaperEyeQuests) do
        Osi.DB_QuestDef_State(quest, "qDesc", 1)
        Osi.DB_QuestDef_State(quest, "qCom", -1)
        ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. quest .. "_qDesc")
    end
    if(Act > 1) then
        for quest, _ in pairs(ReaperCoastQuests) do
            Osi.DB_QuestDef_State(quest, "qDesc", 1)
            Osi.DB_QuestDef_State(quest, "qCom", -1)
            ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. quest .. "_qDesc")
        end
        if(Act > 2) then
            for quest, _ in pairs(NamelessIsleQuests) do
                Osi.DB_QuestDef_State(quest, "qDesc", 1)
                Osi.DB_QuestDef_State(quest, "qCom", -1)
                ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. quest .. "_qDesc")
            end
            if(Act > 3) then
                for quest, _ in pairs(ArxQuests) do
                    Osi.DB_QuestDef_State(quest, "qDesc", 1)
                    Osi.DB_QuestDef_State(quest, "qCom", -1)
                    ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. quest .. "_qDesc")
                end
            end
        end
    end
    PersistentVars["gaveQuests"] = true
end

Ext.Osiris.RegisterListener("RegionStarted", 1, "after", function(region)
    if(not PersistentVars["gaveQuests"] and PersistentVars["gaveQuests"] ~= nil and region ~= "SYS_Character_Creation_A") then
        print("Initializing Quests")
        initializeQuests()
    end
    if(region ~= "SYS_Character_Creation_A") then
       syncQuests()
    end
    if(Act1Keys == 0 or Act1Keys == nil) then
        GlobalSetFlag("FTJKEY")
    end
    if(Act2Keys == 0 or Act2Keys == nil) then
        GlobalSetFlag("RCKEY")
    end
    if(Act3Keys == 0 or Act3Keys == nil) then
        GlobalSetFlag("COSKEY")
    end
    if(Act4Keys == 0 or Act4Keys == nil) then
        GlobalSetFlag("ARXKEY")
    end
    if(RegionBarrier ~= 1) then
        removeAllBarriers()
    else
        syncBarriers()
    end
    if(region == "TUT_Tutorial_A") then
        GlobalSetFlag("CanTPTUT")
    elseif(region == "FJ_FortJoy_Main") then
        GlobalSetFlag("CanTPFTJ")
        restoreWaypoints("FTJWAYP")
    elseif(region == "RC_Main") then
        GlobalSetFlag("CanTPRC")
        restoreWaypoints("RCWAYP")
    elseif(region == "CoS_Main") then
        GlobalSetFlag("CanTPCOS")
        restoreWaypoints("COSWAYP")
    elseif(region == "ARX_Main") then
        GlobalSetFlag("CanTPARX")
        restoreWaypoints("ARXWAYP")
    elseif(region == "ARX_Endgame") then
        GlobalSetFlag("CanTPTOL")
    end
end)

Ext.Osiris.RegisterListener("GameStarted", 2, "after", function(level, isEditorMode)
    if(level ~= "SYS_Character_Creation_A") then
        local party = getParty()
        for _, character in ipairs(party) do
            if(CharacterHasSkill(character, "Shout_ARP_RandomFiller1") == 1) then
                giveRandomSkill(character)
            end
        end
    end
    if(level == "TUT_Tutorial_A" and SyncStyle == 0 and CharacterHasSkill(CharacterGetHostCharacter(), "Target_Archipelago Sync") == 0) then
        CharacterAddSkill(CharacterGetHostCharacter(), "Target_Archipelago Sync", 0)
    end
    if(level == "TUT_Tutorial_A" and ItemTemplateIsInPartyInventory(CharacterGetHostCharacter(), "c1147016-9e07-4980-b32b-556cb1141d8c", 0) == 0 and EnableLevelTeleport == 1) then -- very temporary
        ItemTemplateAddTo("c1147016-9e07-4980-b32b-556cb1141d8c", CharacterGetHostCharacter(), 1, 0)
    end
end)

Ext.Osiris.RegisterListener("CharacterUsedSkill", 4, "after", function(character, skill, skillType, skillElement)
    if(SyncStyle == 0 and skill == "Target_Archipelago Sync") then
        SyncArchipelago()
    end
end)

Ext.Osiris.RegisterListener("ItemAddedToCharacter", 2, "after", function(item, character)
    if(string.sub(item, 1, 22) == "QUEST_ARX_SourceAmulet") then
        Osi.DB_ARX_Cathedral_DivineTomb_PoB_Amulets(item, "ARX_CreepyCraftsman_Has_SourceAmulet", "ARX_DivineTomb_PoB_FullCreepyAmulet", "ARX_DivineTomb_PoB_InsertedCreepyAmulet")
    end
end)

Ext.Osiris.RegisterListener("CharacterDied", 1, "after", function(defender)
    --print("defender: " .. tostring(defender) .. " attackerOwner: " .. tostring(attackerOwner))
    print("defender: " .. tostring(defender))
    defender = Ext.Entity.GetCharacter(defender).MyGuid
    if(IncludedQuests[defender]) then
        print("Added defender: " .. tostring(defender))
        if(defender == "b2a93804-f494-4d65-a342-ca4a6d2dc15f") then -- Rosa Crossley to Magister Executioner
            defender = "5d2a2f6a-6cbf-45cc-8c74-3a1617778ba3"
        elseif(defender == "65589fd4-cc15-42df-a4dd-b2e82eba2225") then -- Garfield Crossley to Magister Inquisitor
            defender = "55a6a526-7d4b-4445-b96e-bfcd0ed71776"
        elseif(defender == "0d876334-1776-4f06-aab1-6cfc56a1dbc4") then -- Idonia Crossley to Silent Watcher
            defender = "1adcb57b-4eaa-415e-80cd-0750e1b00120"
        elseif(defender == "d4300187-0d5a-4b17-854a-50f568d632e8") then -- Ellis Crossley to Silent Watcher
            defender = "c2600226-7154-4033-889a-2d1509b2654a"
        elseif(defender == "76aa6323-45e5-4c95-9408-a9abeace43ad") then -- Owen Anchoret to Magister Inquisitor
            defender = "65038967-e128-477f-bcac-0e6748e3ae5a"
        elseif(defender == "f05b403d-799b-45ad-8770-6900f0e85de8") then -- Rykers adds 3 to 1
            defender = "f4fafa1b-d6c7-4483-894c-66caebe9e6b1"
        elseif(defender == "0fdce096-7735-4410-9668-b7173db74f1d") then -- 4 to 2
            defender = "a823bbff-668c-49a9-acd5-4094fe114c8d"
        elseif(defender == "b10e3799-10a3-45a1-bb6d-0080cc960672") then -- 6 to 12
            defender = "77dbf87b-5021-42ef-b6e8-90c00cef1f16"
        elseif(defender == "25888479-67b5-4380-9cd4-163a004883db") then -- rahlic shrine black ring to magister
            defender = "5b6cb39b-2e8a-4a8c-8447-8538f6b47313"
        elseif(defender == "29c6711c-adce-4e8f-b402-8b6239a7c7e3") then -- rahlic shrine black ring to magister
            defender = "3c5a4458-a17c-43c7-9827-4eb3fd028559"
        elseif(defender == "93f7c630-eece-420c-b519-6caa057ecff6") then -- rahlic shrine black ring to magister
            defender = "318befa0-49d4-4ada-9196-90d8bd4d89ca"
        end
        ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. defender .. "_qCom")
        local data = loadParse(ApOutFile)
        if(not data) then
            return
        end
        local needsToAdd = true
        for k, v in ipairs(data) do
            if(v == defender) then
                needsToAdd = false
                break
            end
        end
        if(needsToAdd) then
            table.insert(data, defender)
            Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
        end
    end
    if(DeathlinkTriggers[defender] and CharacterIsPartyMember(defender) == 1) then
        local party = getParty()
        if(DeathlinkStyleOut == 0) then
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

Ext.Osiris.RegisterListener("ItemOpened", 1, "after", function(item)
    if(ContainerSanity ~= 0) then
        ContainerCheck(item)
    end
end)

Ext.Osiris.RegisterListener("ItemDestroyed", 1, "after", function(item)
    if(ContainerSanity ~= 0) then
        ContainerCheck(item)
    end
end)

local function manualSend(toSend)
    print("Sending manual " .. toSend)
    if(IncludedQuests[toSend]) then
        ObjectSetFlag(CharacterGetHostCharacter(), "QuestUpdate_" .. toSend .. "_qCom")
        local data = loadParse(ApOutFile)
        if(not data) then
            return
        end
        local needsToAdd = true
        for k, v in ipairs(data) do
            if(v == toSend) then
                needsToAdd = false
                break
            end
        end
        if(needsToAdd) then
            table.insert(data, toSend)
            Ext.IO.SaveFile(ApOutFile, Ext.Json.Stringify(data))
        end
    end
end

local function saveWaypoint(waypointID)
    if(string.sub(waypointID, 1, 8) == "WAYP_FTJ") then
        if(PersistentVars["FTJWAYP"] ~= nil) then
            PersistentVars["FTJWAYP"][waypointID] = true
        end
    elseif(string.sub(waypointID, 1, 7) == "WAYP_RC" or waypointID == "RC_DW_Undertavern") then
        if(PersistentVars["RCWAYP"] ~= nil) then
            PersistentVars["RCWAYP"][waypointID] = true
        end
    elseif(string.sub(waypointID, 1, 8) == "WAYP_CoS") then
        if(PersistentVars["COSWAYP"] ~= nil) then
            PersistentVars["COSWAYP"][waypointID] = true
        end
    elseif(string.sub(waypointID, 1, 8) == "WAYP_ARX") then
        if(PersistentVars["ARXWAYP"] ~= nil) then
            PersistentVars["ARXWAYP"][waypointID] = true
        end
    end
    print("Saving waypoint: " .. waypointID)
end

Ext.NewCall(saveWaypoint, "ARP_SaveWaypoint", "(STRING)_waypointID")
Ext.NewCall(manualSend, "ARP_ManualSend", "(STRING)_toSend")

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)