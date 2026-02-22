-- ======================================================================================
-- Mod Name: Clothing Sets Checklist
-- Author: Spuddeh
-- Description: Database of Cyberpunk 2077 Role Sets clothing items.
-- Mod Version: 1.2.1
--=======================================================================================

local ClothingSetsDB = {
    {
        category = "Badge",
        entries = {
            {
                id = "cop_glasses",
                name = "Holo-tinted badge goggles",
                baseID = "Cop_01_Set_Glasses",
                directions =
                "Looted from a deceased cop behind the Northside apartment.\n\nFrom the Northside Apartment fast travel terminal, head west along the street and cross the Goldsmith and Martin intersection turning right and follow the road until you reach a small alley on the left. Head down the alley until you get to the open space, there should be an area with an NCPD squad car on your left.\nThe body is next to the car.",
                requirement = "",
                fast_travel = "Northside Apartment",
                coords = { x = -1616.1580, y = 2151.6143, z = 18.1940, yaw = -177.0999 },
                district = "Watson",
                sub_district = "Northside",

                -- Automation Keys (Populated via Inspector)
                container_id = 615211825038984224ULL
            },
            {
                id = "cop_coat",
                name = "Heavy-duty aramid-reinforced badge coat",
                baseID = "Cop_01_Set_Jacket",
                directions =
                "Looted off a corpse at what appears to be a failed attempt to apprehend a criminal at a house near the southern edge of Rancho Coronado.\n\nFacing the Almuneca & Jerez fast travel terminal, look West North West. You should see a NCPD SUV. Head towards it.\nThe body is next to the furthest NCPD squad car.",
                requirement = "",
                fast_travel = "Almuneca & Jerez",
                coords = { x = 0.6160, y = -1922.3750, z = 2.3356, yaw = 96.1279 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 16577098184244331011ULL
            },
            {
                id = "cop_pants",
                name = "Anti-puncture neotac pants with composite lining",
                baseID = "Cop_01_Set_Pants",
                directions =
                "Looted from a deceased cop in a recessed walkway near a side road on the northwest side of Little China.\n\nFrom the metro, head west until you see a blue neon 24 arrow pointing to the location with the body.\nJust look for the blood.",
                requirement = "",
                fast_travel = "Metro: Farrier & Ferguson",
                coords = { x = -1740.4762, y = 1493.3174, z = 13.7132, yaw = -28.6500 },
                district = "Watson",
                sub_district = "Little China",

                -- Automation Keys (Populated via Inspector)
                container_id = 7067074215797992758ULL
            },
            {
                id = "cop_boots",
                name = "Waterproof badge combat boots",
                baseID = "Cop_01_Set_Boots",
                directions =
                "You can loot two pairs of boots from a couple of formerly living NCPD Badges near a pile of garbage at the base of the Petrochem Dam.\n\nFrom the Woodhaven Street fast travel terminal, head west until see 3 sets of stairs leading up. At the top of the 3rd set you'll see a building with a pinky-purple door right in front of you.\nThe bodies are on the roof.",
                requirement = "",
                fast_travel = "Woodhaven Street",
                coords = { x = 524.5067, y = -2247.9316, z = 46.3800, yaw = 130.9002 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 15435252058579335171ULL
            }
        }
    },
    {
        category = "Corporate",
        entries = {
            {
                id = "corp_glasses",
                name = "Tactical hybrid-glass corporate glasses",
                baseID = "Corporate_01_Set_Glasses",
                directions =
                "Looted from a metal chest at a billboard near a bend in the road.\n\nFrom Rancho Coronado East fast travel, head south-west along the winding road leading up and away from Rancho Coronado.\nLook for the billboard structure near the northernmost bend.",
                requirement = "",
                fast_travel = "Rancho Coronado East",
                coords = { x = 271.1884, y = -2348.6021, z = 82.8460, yaw = 7.6763 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 826453460755430623ULL
            },
            {
                id = "corp_blazer",
                name = "Corporate blazer with bulletproof lining",
                baseID = "Corporate_01_Set_FormalJacket",
                directions =
                "Looted from a corpse next to a burning car and a closed diner.\n\nFrom the Offshore St Fast travel head north east across the train tracks and turn left. Follow the road until you get to an intersection and turn right. Keep following that road until you get to a building with a 'Barely Illegal' sign out the front on your right.\nThe body is next to the burning car nearby.",
                requirement = "",
                fast_travel = "Offshore St",
                coords = { x = -1012.7380, y = 3375.4038, z = 8.5000, yaw = 169.3678 },
                district = "Watson",
                sub_district = "Northside",

                -- Automation Keys (Populated via Inspector)
                container_id = 3346454871578247766ULL
            },
            {
                id = "corp_shirt",
                name = "Carbonweave silk corporate shirt",
                baseID = "Corporate_01_Set_FormalShirt",
                directions =
                "Looted from a body behind scaffolding in a back alley.\n\nFrom Corporation St fast travel, cross the road and head east until you get to a construction site on your right.\nGo under the scaffolding to find the body.",
                requirement = "",
                fast_travel = "Corporation St",
                coords = { x = -1941.0131, y = -136.6950, z = 7.7254, yaw = -26.3501 },
                district = "City Center",
                sub_district = "Downtown",

                -- Automation Keys (Populated via Inspector)
                container_id = 8573244363067412507ULL
            },
            {
                id = "corp_slacks",
                name = "Breathable reinforced bio-cotton corporate slacks",
                baseID = "Corporate_01_Set_Pants",
                directions =
                "Looted from a corpse next to a burning car and a Trauma Team AV.\n\nFrom the Oil Fields fast travel, follow the road  south-west and turn left at the intersection. Cross the bridge and turn left at the next intersection Head towards the building on your left. You will see a Trauma Team AV and a burning car in the parking lot.\nThe body is next to the burning car.",
                requirement = "",
                fast_travel = "Oil Fields",
                coords = { x = -1496.7839, y = 3472.5608, z = 7.1179, yaw = 177.2350 },
                district = "Watson",
                sub_district = "Northside",

                -- Automation Keys (Populated via Inspector)
                container_id = 6072846243068935290ULL
            },
            {
                id = "corp_shoes",
                name = "Ergonomic reinforced corporate pumps/evening shoes",
                baseID = "Corporate_01_Set_FormalShoes",
                directions =
                "Looted from a body between burning vans.\n\nFrom Sam Amaro St fast travel, head north across the bridge and turn left, then immediately take the next right. Enter the parking lot of the large building past the boom gates.\nThe body to the right near the burning vans.",
                requirement = "Complete 'I fought the Law' side job",
                fast_travel = "Sam Amaro St",
                coords = { x = 668.5997, y = -403.9237, z = 6.1202, yaw = 171.3653 },
                district = "Westbrook",
                sub_district = "Charter Hill",

                -- Automation Keys (Populated via Inspector)
                container_id = 1897931067683969859ULL,
                quest_fact = "sq012_done"
            }
        }
    },
    {
        category = "Fixer",
        entries = {
            {
                id = "fixer_glasses",
                name = "Polycarbonate opti-enhanced fixer glasses",
                baseID = "Fixer_01_Set_Glasses",
                directions =
                "Looted from a dead body in an alley.\n\nFrom the Rancho Coronado South fast travel, head south-west. Look for an industrial site full of containers and a big crane at the end of the T-intersection.\nThe body is behind the blue shipping containers.",
                requirement = "",
                fast_travel = "Rancho Coronado South",
                coords = { x = -725.0947, y = -2011.1620, z = 6.6545, yaw = 116.2823 },
                district = "Santo Domingo",
                sub_district = "Arroyo",

                -- Automation Keys (Populated via Inspector)
                container_id = 15448050954034369045ULL
            },
            {
                id = "fixer_coat",
                name = "Trilayer aramid-weave fixer skirt with jacket/coat",
                baseID = "Fixer_01_Set_Coat",
                directions =
                "Looted from a box in the middle of the destroyed 'Ferris wheel' area.\n\nFrom Kendal Park fast travel, head to the destroyed Ferris wheel.\nThe box is right in front of one of the capsules.",
                requirement = "",
                fast_travel = "Kendal Park",
                coords = { x = 462.2430, y = -1660.0762, z = 10.4355, yaw = -28.8693 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 5581995259880354951ULL
            },
            {
                id = "fixer_shirt",
                name = "Heat-resistant aramid-weave fixer bustier/shirt",
                baseID = "Fixer_01_Set_TShirt",
                directions =
                "Looted from a corpse in a back alley.\n\nFrom Ebunike metro station, turn right and follow the road south. Take a left at the intersection onto the one way street. There is a green metal wall with Valentino's graffiti next to a Buck-A-Slice on your right at the corner of Haakenson and Piper. Jump over the wall to the other side.\nIf you don't have double jump yet, you can use the nearby vendor tent to jump over the fence.",
                requirement = "",
                fast_travel = "Ebunike metro station",
                coords = { x = -1166.8694, y = -738.2628, z = 8.1365, yaw = 100.3221 },
                district = "Heywood",
                sub_district = "The Glen",

                -- Automation Keys (Populated via Inspector)
                container_id = 12954668112945221046ULL
            },
            {
                id = "fixer_pants",
                name = "Protective-layer fixer skirt/pants",
                baseID = "Fixer_01_Set_Pants",
                directions =
                "Looted from a small hut on the roof of a building.\n\nFrom the fast travel terminal, face the Jig-Jig Street purple sign. Look up to your left and climb up until you reach a metal shack on the roof of that building.\nThe item is inside the shack.",
                requirement = "",
                fast_travel = "Jig-jig Street",
                coords = { x = -624.6144, y = 879.1553, z = 42.7968, yaw = -7.0746 },
                district = "Westbrook",
                sub_district = "Japantown",

                -- Automation Keys (Populated via Inspector)
                container_id = 6175642682899513688ULL
            },
            {
                id = "fixer_shoes",
                name = "Elastiweave fixer pumps with reinforced seams/shoes",
                baseID = "Fixer_01_Set_FormalShoes",
                directions =
                "Looted from a dead man's body in a blue crashed van (he is the driver).\n\nFace the Crescent & Broad St fast travel terminal and look left. There is a ramp leading to an underground garage.\nThe blue van is on the ramp.",
                requirement = "",
                fast_travel = "Crescent & Broad St",
                coords = { x = -406.9203, y = 451.2936, z = 25.6626, yaw = -152.6500 },
                district = "Westbrook",
                sub_district = "Japantown",

                -- Automation Keys (Populated via Inspector)
                container_id = 11588529402531463754ULL
            }
        }
    },
    {
        category = "Media",
        entries = {
            {
                id = "media_cap",
                name = "Media baseball cap with reactive layer",
                baseID = "Media_01_Set_Cap",
                directions =
                "Looted from the top of a metal tower.\n\nFrom Regional Airport fast travel, head to the metal tower in the middle of the abandoned airport.\nYou can walk on the metal beams or double-jump up onto the platform.",
                requirement = "Complete 'Life During Wartime' quest",
                fast_travel = "Regional Airport",
                coords = { x = -1381.2759, y = -5110.0107, z = 99.8998, yaw = 160.8692 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 485085219155544633ULL,
                quest_fact = "q104_done"
            },
            {
                id = "media_ocuset",
                name = "Armored media ocuset with camera",
                baseID = "Media_01_Set_Tech",
                directions =
                "Looted from a container inside an abandoned RV.\n\nFrom Regional Airport fast travel, head west-south-west. The RV is parked near a big antenna thingy.\nThe container is on your left as you enter.",
                requirement = "",
                fast_travel = "Regional Airport",
                coords = { x = -2010.5896, y = -5203.8745, z = 84.4468, yaw = 27.1494 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 3891232472580862773ULL
            },
            {
                id = "media_vest",
                name = "Laminate-armor media ballistic vest",
                baseID = "Media_01_Set_Vest",
                directions =
                "Looted from a dead body on a balcony.\n\nFace the Crescent & Broad St fast travel terminal, turn right and diagonally cross intersection. Take a right turn again and enter the alley with the Xiao Xiongmao restaurant. Climb the stairs at the end of the alley. Look at the building on the right with the balconies.\nThe body is behind the sheet on the lowest balcony",
                requirement = "",
                fast_travel = "Crescent & Broad St",
                coords = { x = -471.8769, y = 622.0525, z = 33.9451, yaw = -93.6620 },
                district = "Westbrook",
                sub_district = "Japantown",

                -- Automation Keys (Populated via Inspector)
                container_id = 12294291819581889657ULL
            },
            {
                id = "media_shirt",
                name = "Heat-resistant nanoweave media shirt",
                baseID = "Media_01_Set_Shirt",
                directions =
                "Looted from under the street jutting out into the water.\n\nFrom Corporation St fast travel, look for the street extending over the water and follow it towards the end. As you head down the street there will be multiple seating areas on the left and right. When you get to the last one on the right, take the stairs down, then climb over the fence to access this area directly below the street.\nThe body is just over the fence on your right.",
                requirement = "",
                fast_travel = "Corporation St",
                coords = { x = -2640.5400, y = -500.3655, z = 0.4533, yaw = 147.0015 },
                district = "Heywood",
                sub_district = "Wellsprings",

                -- Automation Keys (Populated via Inspector)
                container_id = 5390026314221053915ULL
            },
            {
                id = "media_pants",
                name = "Anti-piercing tactical media cargo pants",
                baseID = "Media_01_Set_Pants",
                directions =
                "Looted from dead body on a platform with an billboard.\n\nFrom San Amaro St fast travel, head north across the river and turn left. Follow the street until you get to the second street on the right and turn down it. You should see an billboard on the right.\nShoot the ladder to drop it down, so you can climb on it.",
                requirement = "",
                fast_travel = "San Amaro St",
                coords = { x = 405.8682, y = -501.8722, z = 11.4490, yaw = -96.3700 },
                district = "Westbrook",
                sub_district = "Charter Hill",

                -- Automation Keys (Populated via Inspector)
                container_id = 16850256344260266503ULL
            },
            {
                id = "media_shoes",
                name = "Lightweight hardened-rubber media steel-toes",
                baseID = "Media_01_Set_Shoes",
                directions =
                "Looted from a body on the roof of a fast-food restaurant.\n\nStart from the Lele Park fast travel terminal, cross the street to The Rindo Hotel and head up the stairs to the right. Take the stairs on the left down to the seating area with the yellow umbrellas. The body is on the top of the food vendor. You can easily climb up using the umbrellas in front of the restaurant.\nPotentially contains the pants as well as the shoes.",
                requirement = "",
                fast_travel = "Lele Park",
                coords = { x = -241.8815, y = -118.7520, z = 11.7193, yaw = 1.2071 },
                district = "Westbrook",
                sub_district = "Charter Hill",

                -- Automation Keys (Populated via Inspector)
                container_id = 7713833170175307029ULL
            }
        }
    },
    {
        category = "Netrunner",
        entries = {
            {
                id = "netrunner_visor",
                name = "Antisurge ICE-protected netrunner infovisor",
                baseID = "Netrunner_01_Set_Visor",
                directions =
                "Looted from a metal container at the end of Reported Crime: Death from Above.\n\nFrom Abandoned Fuel Station fast travel, head east along the road to find a burned car with a corpse. Loot it and read the shard to start the mission. The location is a little to the northwest from the fast travel terminal.\nIt's possible to get 2 of the Netrunner infovisors from the container.",
                requirement = "Reported Crime: Death from Above",
                fast_travel = "Abandoned Fuel Station",
                coords = { x = -1217.4949, y = -5519.8398, z = 91.5107, yaw = 36.8357 },
                gig_coords = { x = -726.4550, y = -5540.0767, z = 86.7313, yaw = 16.4357 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 3720147277382778520ULL
            },
            {
                id = "netrunner_suit",
                name = "Heat-resistant hybridweave netrunning suit",
                baseID = "Netrunner_01_Set_Jumpsuit",
                directions =
                "Looted from a body in a small metal hut in The Glen, in Heywood.\n\nFacing the Ventura & Skyline fast terminal, turn left and head down the road. Cross over the streat heading right and continue straight You will see a ramp leading into an alcove on your right. Directly ahead is a metal shack with big orange pipe going along on its right side. Go to the back of the shack and find the hole in the bottom.\nCrouch to enter and head to the second room, where you will find a corpse with this item.",
                requirement = "",
                fast_travel = "Ventura & Skyline",
                coords = { x = -2012.7653, y = -1165.8583, z = 11.0158, yaw = -107.8618 },
                district = "Heywood",
                sub_district = "Wellsprings",

                -- Automation Keys (Populated via Inspector)
                container_id = 11270111018070707284ULL
            },
            {
                id = "netrunner_pants",
                name = "Dura-membrane netrunner neotac pants",
                baseID = "Netrunner_01_Set_Pants",
                directions =
                "Looted from a dead netrunner at the top of a water tower.\n\nFacing The Perishing Street fast travel terminal, turn right and follow the street and take the next left up the ramp to the parking lot. On your right there are two identical water towers; you want the northern most one, behind the building. There will be a motorcycle at the bottom of the stairs.\nClimb to the top to find the corpse with the loot.",
                requirement = "",
                fast_travel = "Perishing Street",
                coords = { x = -1728.2589, y = 2509.5271, z = 48.0129, yaw = 101.0429 },
                district = "Watson",
                sub_district = "Northside",

                -- Automation Keys (Populated via Inspector)
                container_id = 4610341842695707231ULL
            },
            {
                id = "netrunner_boots",
                name = "Hardened netrunner boots with composite inserts",
                baseID = "Netrunner_01_Set_Shoes",
                directions =
                "Found on a body inside a shaft in Charter Hill, Westbrook.\n\nFacing the Luxury Apartments fast travel terminal turn right and head down the street. Take a right at the intersection. From there head south-west towards Lele St. When you get to the next intersection look diagonal left and cross over the street. There's an open hatch over the railings with another body just outside it.\nHead inside the hatch and find the body with the loot.",
                requirement = "",
                fast_travel = "Luxury Apartments",
                coords = { x = -53.7647, y = -226.8722, z = 1.6377, yaw = -79.5690 },
                district = "Westbrook",
                sub_district = "Charter Hill",

                -- Automation Keys (Populated via Inspector)
                container_id = 3717204922718748825ULL
            }
        }
    },
    {
        category = "Nomad",
        entries = {
            {
                id = "nomad_mask",
                name = "Manganese-laminate nomad gas mask",
                baseID = "Nomad_01_Set_Mask",
                directions =
                "Looted from a metal box sitting on a sofa in an 'abandoned' camp.\n\nFrom Solar Arrays fast travel, head south. The sofa is on the south side of a broken van in the middle of the camp.",
                requirement = "",
                fast_travel = "Solar Arrays",
                coords = { x = -696.6085, y = -4232.6616, z = 58.2403, yaw = 43.0725 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 7162975167968481206ULL
            },
            {
                id = "nomad_jacket",
                name = "Duolayer microplate-mesh nomad jacket",
                baseID = "Nomad_01_Set_Jacket",
                directions =
                "Looted from a bunker outside an abandoned building.\n\nFrom Border Checkpoint fast travel terminal, head due East-North-East. Cross over the road and keep heading East-North-East until you find an abandoned building the bunker is on the outside of the building with stairs leading down.\nThe item is inside the bunker.",
                requirement = "Body 20",
                fast_travel = "Border Checkpoint",
                coords = { x = -2353.5796, y = -5311.8706, z = 86.3978, yaw = 179.6578 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 17731160820309277180ULL
            },
            {
                id = "nomad_shirt",
                name = "Polycarbonate nomad shirt with reinforced seams",
                baseID = "Nomad_01_Set_TShirt",
                directions =
                "Looted from a body near a destroyed van.\n\nFrom Tango Tors Motel fast travel, head south-west. The van is easy to spot from a distance. It's got white graffiti reading 'Reaper smiles upon you' on its left door.\nOn its south side you will find a corpse with the item.",
                requirement = "",
                fast_travel = "Tango Tors Motel",
                coords = { x = -659.9988, y = -5386.2207, z = 80.4691, yaw = -71.6778 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 13466818168993327307ULL
            },
            {
                id = "nomad_pants",
                name = "Ultralight tear-resistant nomad pants",
                baseID = "Nomad_01_Set_Pants",
                directions =
                "Looted from a body next to a crashed red van.\n\nFrom Las Palapas Motel fast travel terminal, head north-east into the open fields. Look for a red van crashed head-first into a power pole. \nThere is a friendly drone next to the body, if you don't attack it, it will remain neutral, allowing you to easily loot the items.",
                requirement = "",
                fast_travel = "Las Palapas Motel",
                coords = { x = -1248.0898, y = -3469.5730, z = 44.8288, yaw = -75.9681 },
                district = "Badlands",
                sub_district = "Biotechnica Flats",

                -- Automation Keys (Populated via Inspector)
                container_id = 15954312745471405616ULL
            },
            {
                id = "nomad_boots",
                name = "Durable bioleather nomad western boots",
                baseID = "Nomad_01_Set_Boots",
                directions =
                "Looted on a body inside a small underground bunker in the Badlands.\n\nHead west-north-west from the Old Turbines Fast Travel terminal.\nThe bunker is just behind an abandoned gas station at the intersection.",
                requirement = "",
                fast_travel = "Old Turbines",
                coords = { x = 3336.8354, y = -1535.9359, z = 103.6222, yaw = 9.8987 },
                district = "Badlands",
                sub_district = "Rocky Ridge",

                -- Automation Keys (Populated via Inspector)
                container_id = 15900519306609061178ULL
            }
        }
    },
    {
        category = "Rocker",
        entries = {
            {
                id = "rocker_glasses",
                name = "Scratch-resistant polarized rocker aviators",
                baseID = "Rockerboy_01_Set_Glasses",
                directions =
                "Looted from a body next to the Foodscape store.\n\nFacing the Almuneca & Jerez fast travel terminal, turn right and head down the street. Go past the first intersection and look for the Foodscape building on your left.\nThe body is on the north side of the building, below the Mallagra bridge, next to the concrete wall with the graffiti.",
                requirement = "",
                fast_travel = "Almuneca & Jerez",
                coords = { x = 148.8232, y = -1721.0336, z = -10.1236, yaw = -96.1017 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 2058780792041270873ULL
            },
            {
                id = "rocker_jacket",
                name = "Reinforced composite-lined rocker foldtop/Duolayer polyamide rocker vest",
                baseID = "Rockerboy_01_Set_Jacket",
                directions =
                "Looted from a body in the middle of the catwalk area.\n\nFacing the Bellevue Overwalk fast travel terminal, climb the staircase to the left.\nThe body is in the middle of the catwalk.",
                requirement = "",
                fast_travel = "Bellevue Overwalk",
                coords = { x = -1178.0591, y = 1473.5515, z = 38.2505, yaw = 80.0482 },
                district = "Watson",
                sub_district = "Kabuki",

                -- Automation Keys (Populated via Inspector)
                container_id = 8436291416207064780ULL
            },
            {
                id = "rocker_shirt",
                name = "Armorweave rocker bra/Reinforced-seam cotton rocker tank",
                baseID = "Rockerboy_01_Set_TShirt",
                directions =
                "Looted from a body on a destroyed concert mini stage.\n\nFrom the Batty's Hotel fast travel terminal, head north-east out of the driveway and turn left onto the street. Just past the billboards on your right, near the Rio Benito street sign, is a broken railing. Climb up there and follow the balcon until you get to the destroyed concert mini stage.\nThe body containging the item is the left one on the stage, near the guitars.",
                requirement = "",
                fast_travel = "Batty's Hotel",
                coords = { x = -1873.7684, y = -1737.2727, z = 48.4800, yaw = 57.9413 },
                district = "Pacifica",
                sub_district = "Coastview",

                -- Automation Keys (Populated via Inspector)
                container_id = 8692711782215759610ULL
            },
            {
                id = "rocker_pants",
                name = "Elastic flame-resistant rocker pants",
                baseID = "Rockerboy_01_Set_Pants",
                directions =
                "Looted from a body inside a metal cage.\n\nFrom Downtown North fast travel, head west along Bruce Skiv street. Walk under the megabuilding and right after it you will see the big metal cage up and to your left. The body containing this item is inside the cage.\nYou can enter the cage from the top to bypass the body check.",
                requirement = "Body 15",
                fast_travel = "Downtown North",
                coords = { x = -1641.5881, y = 654.5980, z = 12.7293, yaw = -114.9199 },
                district = "City Center",
                sub_district = "Downtown",

                -- Automation Keys (Populated via Inspector)
                container_id = 10261875046946734560ULL
            },
            {
                id = "rocker_boots",
                name = "Puncture-resistant rocker ankle boots",
                baseID = "Rockerboy_01_Set_Boots",
                directions =
                "Looted from a cage at the end of an alley.\n\nFrom Skyline & Republic fast travel, head directly east and follow the street to the next crossroad, then turn north (left). Turn left at the Bruce Skiv street sign and go up the stairs. The cage with the body is at the end of this alley.\nYou can also reach the area through a hole in the fence on the north side, facing the water to bypass the body check.",
                requirement = "Body 15",
                fast_travel = "Skyline & Republic",
                coords = { x = -2262.7515, y = 569.4436, z = 9.3325, yaw = -144.8454 },
                district = "City Center",
                sub_district = "Downtown",

                -- Automation Keys (Populated via Inspector)
                container_id = 13565311800909968596ULL
            }
        }
    },
    {
        category = "Solo",
        entries = {
            {
                id = "solo_visor",
                name = "Titanium solo techgogs with tactical software",
                baseID = "Solo_01_Set_Visor",
                directions =
                "Looted from a dead body in the shipping landmass.\n\nFrom Protein Farm fast travel, head east (or west from Fuel Station).\nThe body is at a blocked off T-intersection halfway between the two fast travel terminals on the map.",
                requirement = "",
                fast_travel = "Protein Farm",
                coords = { x = -2837.5432, y = -4194.2603, z = 68.0118, yaw = 37.6107 },
                district = "Badlands",
                sub_district = "Biotechnica Flats",

                -- Automation Keys (Populated via Inspector)
                container_id = 14741108630207741495ULL
            },
            {
                id = "solo_jacket",
                name = "Heavy shock-absorbent solo jacket",
                baseID = "Solo_01_Set_Jacket",
                directions =
                "Looted from a small caged area.\n\nFrom Senate & Market fast travel terminal, cross the road and head east past the Time Machine music shop. Keep following the road east to towards Megabuilding 01. On the right side of Megabuilding 01, there is an alley with a metal cage on the left. The only entrance is through the door. You need 20 Technical to open the door.\nAs you enter, keep walking to the other end of the cage, the body will be on your left.",
                requirement = "Technical 20",
                fast_travel = "Senate & Market",
                coords = { x = -1657.6099, y = -576.4305, z = 7.3800, yaw = 166.4200 },
                district = "Heywood",
                sub_district = "The Glen",

                -- Automation Keys (Populated via Inspector)
                container_id = 12507535501077776572ULL
            },
            {
                id = "solo_shirt",
                name = "Ultrathin composite-print solo shirt",
                baseID = "Solo_01_Set_TShirt",
                directions =
                "Looted from a suitcase next to a small rock formation.\n\nFrom the Old Turbines fast travel terminal, head east-north-east. Cross over the road and continue until you see a small rock formation with some bodies and look scattered around.\nThe item is in the suitcase",
                requirement = "",
                fast_travel = "Old Turbines",
                coords = { x = 3961.9226, y = -1569.1335, z = 135.0630, yaw = -58.2377 },
                district = "Badlands",
                sub_district = "Jackson Plains",

                -- Automation Keys (Populated via Inspector)
                container_id = 5269171730453990349ULL
            },
            {
                id = "solo_pants",
                name = "Armor-plated syn-leather solo pants",
                baseID = "Solo_01_Set_Pants",
                directions =
                "Looted from a body in a shack in an alcove on the beach.\n\nFrom Pumping Station fast travel, head west until you reach the end of the street. Enter the balcony area through the open gate. Follow that around to the left and you should find a lader on your right. Take that down to the beach. Immediatly turn left and walk south keeping an eye on your left for a green metal fence. Through the fence is a shack, jump over it to find the entrance.\nThe body with the pants is inside that shack on a corpse of an Animal gang member NPC.",
                requirement = "",
                fast_travel = "Pumping Station",
                coords = { x = -2519.0081, y = -1014.8523, z = 5.7900, yaw = 137.2490 },
                district = "Heywood",
                sub_district = "Wellsprings",

                -- Automation Keys (Populated via Inspector)
                container_id = 3350479498719052333ULL
            },
            {
                id = "solo_boots",
                name = "Gold-tipped manganese steel solo boots",
                baseID = "Solo_01_Set_Boots",
                directions =
                "Looted from a metal container behind a cook.\n\nFrom Kabuki fast travel terminal, head south-west and cross the road. You should see an entrance with stairs leading down to the markets. Turn left after the stairs and take the elevator to the 3rd floor.\nThe container is behind the cook.",
                requirement = "",
                fast_travel = "Kabuki",
                coords = { x = -1213.9685, y = 1950.2778, z = 25.9843, yaw = 65.0951 },
                district = "Watson",
                sub_district = "Kabuki",

                -- Automation Keys (Populated via Inspector)
                container_id = 12528611591187269665ULL
            }
        }
    },
    {
        category = "Techie",
        entries = {
            {
                id = "techie_cap",
                name = "Cushioned techie baseball cap",
                baseID = "Techie_01_Set_Cap",
                directions =
                "Looted from a metal box in a basement under a house.\n\nFrom Rocky Ridge fast travel, head towards the fuel station. Take the road inbetween the bar and the fuel station. Turn right at the intersection and contiune on past the next intersection. The house is the first on on the left. Behind the house you will find the basement entrance.\nThe item is inside a metal box with an Arasaka label on it, on a shelf to your left from the entrance.",
                requirement = "Technical 15",
                fast_travel = "Rocky Ridge",
                coords = { x = 2609.2996, y = 110.0857, z = 73.1259, yaw = -75.9680 },
                district = "Badlands",
                sub_district = "Rocky Ridge",

                -- Automation Keys (Populated via Inspector)
                container_id = 7290105793810876475ULL
            },
            {
                id = "techie_ocuset",
                name = "Laminated ICE-protected techie ocuset",
                baseID = "Techie_01_Set_Tech",
                directions =
                "Looted from a metal container inside a burned down trailer.\n\nFrom Edgewood Farm Fast Travel terminal, go west until you see the trailer.\nLook for the Fuyutshki Electronics container inside the trailer.",
                requirement = "",
                fast_travel = "Edgewood Farm",
                coords = { x = 2078.4028, y = -1369.6492, z = 53.9188, yaw = 152.5414 },
                district = "Badlands",
                sub_district = "Rocky Ridge",

                -- Automation Keys (Populated via Inspector)
                container_id = 5222733804510078227ULL
            },
            {
                id = "techie_vest",
                name = "Polycarbonate nanoweave techie harness",
                baseID = "Techie_01_Set_Vest",
                directions =
                "Looted from a metal box inside a storage container.\n\nFrom Venture & Skyline fast travel terminal, head west down the street. When you get to the intersection, turn left and go up the ramp. Go straight a head until you see a storage shed with  Valentinos graffiti. The storage shed we want is just to the right of it. There is a red light that will be your clue for which door to open.\nOnce inside, open the metal box on the counter.",
                requirement = "Body 20",
                fast_travel = "Venture & Skyline",
                coords = { x = -1966.6583, y = -1345.5496, z = 14.4657, yaw = -26.1359 },
                district = "Heywood",
                sub_district = "The Glen",

                -- Automation Keys (Populated via Inspector)
                container_id = 11344704799973943924ULL
            },
            {
                id = "techie_shirt",
                name = "Thermoactive tear-resistant techie shirt",
                baseID = "Techie_01_Set_TShirt",
                directions =
                "Looted from a container in the tunnel with the Murkmobile.\n\nFrom Rocky Ridge fast travel, head to the tunnel location associated with the 'Ghost Town' mission (Murk Man location).\nThe item is inside a container behind the Murkmobile.",
                requirement = "Complete 'Ghost Town' mission, reach 34 Street Cred, and wait 2 days",
                fast_travel = "Rocky Ridge",
                coords = { x = 1860.2976, y = -63.1075, z = 55.2708, yaw = 142.6410 },
                district = "Badlands",
                sub_district = "Red Peaks",

                -- Automation Keys (Populated via Inspector)
                container_id = 5767251801100424137ULL,
                quest_fact = "q103_done"
            },
            {
                id = "techie_pants",
                name = "Reinforced duolayer techie cargo pants",
                baseID = "Techie_01_Set_Pants",
                directions =
                "Looted from a corpse near two police cars.\n\nFrom Dam Viewpoint fast travel terminal, follow the road to the right to go down. Keep following the road after you pass through the tunnel. Straight ahead is an incident on the side of the road with two police cars nearby.\nThe body is next to the truck.",
                requirement = "",
                fast_travel = "Dam Viewpoint",
                coords = { x = 745.5889, y = -2078.2493, z = 125.5762, yaw = 152.4366 },
                district = "Santo Domingo",
                sub_district = "Rancho Coronado",

                -- Automation Keys (Populated via Inspector)
                container_id = 11637808517421767967ULL
            },
            {
                id = "techie_shoes",
                name = "Cushioned aramid-sole techie shoes",
                baseID = "Techie_01_Set_Shoes",
                directions =
                "Looted from a dead technician behind a gate in Corpo Plaza.\n\nFrom Metro: Memorial Park head up the stairs to the ring road and turn right. Follow it around to the Militech HQ Building. To the right of the AV landing pads is a gate leading to the dead technician.\nIf you time it and position it right, you can double jump twice to make it over the top of the fence bypassing the check to open the gate.",
                requirement = "Technical 15",
                fast_travel = "Metro: Memorial Park",
                coords = { x = -1361.2330, y = -286.2870, z = 7.7256, yaw = 133.5286 },
                district = "City Center",
                sub_district = "Corpo Plaza",

                -- Automation Keys (Populated via Inspector)
                container_id = 8463151567534865155ULL
            }
        }
    },
    {
        category = "V's Set",
        entries = {
            {
                id = "v_tshirt",
                name = "V's favorite top/T-shirt",
                baseID = "Q001_TShirt",
                directions =
                "Granted automtically to you when starting 'The Rescue' main job",
                requirement = "",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_pants",
                name = "V's pants",
                baseID = "Q001_Pants",
                directions =
                "Granted automtically to you when starting 'The Rescue' main job",
                requirement = "",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_shoes",
                name = "V's sneakers",
                baseID = "Q001_Shoes",
                directions =
                "Granted automtically to you when starting 'The Rescue' main job",
                requirement = "",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "Yorinobu",
        entries = {
            {
                id = "yorinobu_coat",
                name = "Kotetsu no Ryu coat",
                baseID = "Q005_Steel_Dragons_Coat",
                directions =
                "Can be found inside a cache in the bathroom of Yorinobu's Penthouse in Konpeki Plaza during The Heist.",
                requirement = "Only available during the Heist",
                fast_travel = "",
                coords = { x = -2230.0366, y = 1765.6279, z = 308.0000, yaw = 28.6499 },
                district = "Watson",
                sub_district = "Arasaka Waterfront",

                -- Automation Keys (Populated via Inspector)
                container_id = 12354572361594810392ULL
            },
            {
                id = "yorinobu_shirt",
                name = "Yorinobu's formal shirt",
                baseID = "Q005_Yorinobu_FormalShirt",
                directions =
                "Can be found inside a cache in Yorinobu's Penthouse in Konpeki Plaza during The Heist.",
                requirement = "Only available during the Heist",
                fast_travel = "",
                coords = { x = -2204.0803, y = 1763.0573, z = 312.0000, yaw = -83.0501 },
                district = "Watson",
                sub_district = "Arasaka Waterfront",

                -- Automation Keys (Populated via Inspector)
                container_id = 4037349489039413111ULL
            },
            {
                id = "yorinobu_slacks",
                name = "Yorinobu's slacks",
                baseID = "Q005_Yorinobu_FormalPants",
                directions =
                "Can be found inside a cache in Yorinobu's Penthouse in Konpeki Plaza during The Heist.",
                requirement = "Only available during the Heist",
                fast_travel = "",
                coords = { x = -2204.0803, y = 1763.0573, z = 312.0000, yaw = -83.0501 },
                district = "Watson",
                sub_district = "Arasaka Waterfront",

                -- Automation Keys (Populated via Inspector)
                container_id = 4037349489039413111ULL
            }
        }
    },
    {
        category = "Silverhand",
        entries = {
            {
                id = "silverhand_glasses",
                name = "Johnny's aviators",
                baseID = "Q005_Johnny_Glasses",
                directions =
                "Reward from 'A Cool Metal Fire' side job",
                requirement = "'Chippin' In' side job started",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "silverhand_jacket",
                name = "Replica of Johnny's Samurai jacket",
                baseID = "SQ031_Samurai_Jacket",
                directions =
                "Reward from 'Chippin' In' side job",
                requirement = "'Tapeworm' main Job completed",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "silverhand_tank_top",
                name = "Johnny's tank top",
                baseID = "Q005_Johnny_Shirt",
                directions =
                "Reward from 'Tapeworm' main job",
                requirement =
                "'Automatic Love', 'Transmission', 'Life During Wartime', or 'Search and Destroy' main job completed",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "silverhand_pants",
                name = "Johnny's pants",
                baseID = "Q005_Johnny_Pants",
                directions =
                "Lootable during 'Psychofan' gig for Padre\n\nThis item is technically missable.\nFound in a suitcase in the bedroom upstairs.",
                requirement = "",
                fast_travel = "Glen Apartment",
                coords = { x = -1456.7596, y = -1036.8740, z = 81.5606, yaw = 178.1981 },
                district = "Heywood",
                sub_district = "The Glen",

                -- Automation Keys (Populated via Inspector)
                container_id = 11741236633125004063ULL
            },
            {
                id = "silverhand_shoes",
                name = "Johnny's shoes",
                baseID = "Q005_Johnny_Shoes",
                directions =
                "Lootable during 'Family Heirloom' gig for Rogue\n\nThis item is technically missable.\nFound inside the locker alongside the Bootleg Shard and Car Keys.",
                requirement = "Gig: A Shrine Defiled completed for Wakako",
                fast_travel = "Dynalar",
                coords = { x = 415.4068, y = -427.5735, z = 3.0564, yaw = 75.1810 },
                district = "Westbrook",
                sub_district = "Charter Hill",

                -- Automation Keys (Populated via Inspector)
                container_id = 7307781469191091041ULL
            }
        }
    },
    {
        category = "Patch Quests",
        entries = {
            {
                id = "davids_jacket",
                name = "David's Jacket",
                baseID = "MQ049_martinez_jacket",
                directions =
                "Reward from 'Over the Edge' side job.\n\nFacing the Megabuilding H4 fast travel terminal, cut through the parking lot on your left and turn right on to the road. Follow the road past the first intersection and then take the second intersection on your right. Follow the street around the bend and you will find an alcove filled with trash and the Edgerunner's logo.\nInteracte with the BD wreath in the trash can to begin the quest.",
                requirement = "Cyberpunk 2077 Patch 1.6 or newer",
                fast_travel = "Megabuilding H4",
                coords = { x = -882.3826, y = -1657.8036, z = 9.8667, yaw = 76.6001 },
                district = "Santo Domingo",
                sub_district = "Arroyo"
            },
            {
                id = "joker_shirt",
                name = "The Joker of Night City (Masc V)",
                baseID = "MWS_Jim_Shirt_Reward",
                directions =
                "Can be obtained after collecting all 10 Joker shards scattered throughout Night City.\nThe t-shirt can be picked up next to the final shard.",
                requirement = "Cyberpunk 2077 Patch 2.2 or newer",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "joker_shirt_f",
                name = "The Joker of Night City (Fem V)",
                baseID = "MWS_Jim_Shirt_Reward_f",
                directions =
                "Can be obtained after collecting all 10 Joker shards scattered throughout Night City.\nThe t-shirt can be picked up next to the final shard.",
                requirement = "Cyberpunk 2077 Patch 2.2 or newer",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "MaxTac",
        entries = {
            {
                id = "maxTac_helmet",
                name = "MaxTac tactical helmet with multifunction infovisor",
                baseID = "SQ030_MaxTac_Helmet",
                directions =
                "Found in Judy's apartment after romancing her during the Pyramid song side job",
                requirement = "Romance Judy Alverez (female V)",
                fast_travel = "Charter St",
                coords = { x = -898.0767, y = 1859.6652, z = 42.3651, yaw = -34.9907 },
                district = "Watson",
                sub_district = "Kabuki",
                container_id = 17799680898862517875ULL,
                quest_fact = "sq030_judy_lover"
            },
            {
                id = "maxTac_jacket",
                name = "MaxTac multilayered armor-weave Jacket",
                baseID = "SQ030_MaxTac_Chest",
                directions =
                "Found in Judy's apartment after romancing her during the Pyramid song side job",
                requirement = "Romance Judy Alverez (female V)",
                fast_travel = "Charter St",
                coords = { x = -898.0767, y = 1859.6652, z = 42.3651, yaw = -34.9907 },
                district = "Watson",
                sub_district = "Kabuki",
                container_id = 17799680898862517875ULL,
                quest_fact = "sq030_judy_lover"
            },
            {
                id = "maxTac_pants",
                name = "Heavy-duty MaxTac cargo pants",
                baseID = "SQ030_MaxTac_Pants",
                directions =
                "Found in Judy's apartment after romancing her during the Pyramid song side job",
                requirement = "Romance Judy Alverez (female V)",
                fast_travel = "Charter St",
                coords = { x = -898.0767, y = 1859.6652, z = 42.3651, yaw = -34.9907 },
                district = "Watson",
                sub_district = "Kabuki",
                container_id = 17799680898862517875ULL,
                quest_fact = "sq030_judy_lover"
            }
        }
    },
    {
        category = "NUS Infiltrator",
        entries = {
            {
                id = "nus_infiltrator_headgear",
                name = "NUS infiltrator headgear",
                baseID = "Twitch_Drop_Specs",
                directions =
                "Obtainable as a limited-time Twitch drop promotion.",
                requirement = "Phantom Liberty DLC",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "nus_infiltrator_jacket",
                name = "NUS infiltrator jacket",
                baseID = "Twitch_Drop_Vest",
                directions =
                "Obtainable as a limited-time Twitch drop promotion.",
                requirement = "Phantom Liberty DLC",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "nus_infiltrator_pants",
                name = "NUS infiltrator pants",
                baseID = "Twitch_Drop_Pants",
                directions =
                "Obtainable as a limited-time Twitch drop promotion.",
                requirement = "Phantom Liberty DLC",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "nus_infiltrator_boots",
                name = "NUS infiltrator boots",
                baseID = "Twitch_Drop_Boots",
                directions =
                "Obtainable as a limited-time Twitch drop promotion.",
                requirement = "Phantom Liberty DLC",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "GOG",
        entries = {
            {
                id = "gog_wolf_school_jacket",
                name = "Wolf School Jacket",
                baseID = "GOG_DLC_Jacket",
                directions =
                "Unlocked by owning Cyberpunk 2077 on the GOG Galaxy platform or by linking your account with GOG if owned on Steam or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "GOG Galaxy account linked or Cyberpunk 2077 purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "gog_wild_hunt_jacket",
                name = "Wild Hunt jacket",
                baseID = "Red_Play_Jacket",
                directions =
                "Unlocked by owning The Witcher 3: Wild Hunt and Cyberpunk 2077: Phantom Liberty on the GOG Galaxy platform or by linking your account with GOG if owned on Steam or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "The Witcher 3: Wild Hunt and Cyberpunk 2077: Phantom Liberty purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "gog_galaxy_tshirt",
                name = "Galaxy T-shirt",
                baseID = "GOG_Galaxy_TShirt",
                directions =
                "Unlocked by owning Cyberpunk 2077 on the GOG Galaxy platform or by linking your account with GOG if owned on Steam or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "GOG Galaxy account linked or Cyberpunk 2077 purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "gog_wolf_school_tshirt",
                name = "Wolf School T-shirt",
                baseID = "GOG_DLC_TShirt",
                directions =
                "Unlocked by owning Cyberpunk 2077 on the GOG Galaxy platform or by linking your account with GOG if owned on Steam or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "GOG Galaxy account linked or Cyberpunk 2077 purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "gog_gwent_tshirt",
                name = "GWENT t-shirt",
                baseID = "Red_Play_TShirt",
                directions =
                "Unlocked by owning GWENT: The Witcher Card Game and Cyberpunk 2077: Phantom Liberty on the GOG Galaxy platform or by linking your account with GOG if owned on Steam or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "GWENT: The Witcher Card Game and Cyberpunk 2077: Phantom Liberty purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "gog_rarog_vest",
                name = "Rarog vest",
                baseID = "Red_Play_Vest",
                directions =
                "Unlocked by owning Cyberpunk 2077: Phantom Liberty on the GOG Galaxy platform or by linking your account with GOG or by linking your CD Projekt RED account on console.\nIt is automatically added to V's stash.",
                requirement = "Cyberpunk 2077: Phantom Liberty purchased on GOG Galaxy",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    } --[[,
    {
        category = "Life Paths",
        entries = {
            {
                id = "v_office_blazer",
                name = "V's office blazer",
                baseID = "Q000_Corpo_FormalJacket",
                directions =
                "Pick the Corpo life path.",
                requirement = "Corpo life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_office_slacks",
                name = "V's office slacks",
                baseID = "Q000_Corpo_FormalPants",
                directions =
                "Pick the Corpo life path.",
                requirement = "Corpo life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_office_pumps",
                name = "V's office pumps/shoes",
                baseID = "Q000_Corpo_FormalShoes",
                directions =
                "Pick the Corpo life path.",
                requirement = "Corpo life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_nomad_vest_bakkers",
                name = "V's vest (with Bakkers patch)",
                baseID = "Q000_Nomad_Vest",
                directions =
                "Pick the Nomad life path.",
                requirement = "Nomad life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_nomad_vest_bakkers_no_patch",
                name = "V's vest (without Bakkers patch)",
                baseID = "Q000_Nomad_noPatch_Vest",
                directions =
                "Pick the Nomad life path.",
                requirement = "Nomad life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_nomad_tshirt",
                name = "V's tattered crop top/old tank top",
                baseID = "Q000_Nomad_TShirt",
                directions =
                "Pick the Nomad life path.",
                requirement = "Nomad life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_nomad_pants",
                name = "V's nomad pants",
                baseID = "Q000_Nomad_Pants",
                directions =
                "Pick the Nomad life path.",
                requirement = "Nomad life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_nomad_boots",
                name = "V's nomad shoes/boots",
                baseID = "Q000_Nomad_Boots",
                directions =
                "Pick the Nomad life path.",
                requirement = "Nomad life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_streetkid_tshirt",
                name = "V's tattered crop top/stained tank top",
                baseID = "Q000_StreetKid_TShirt",
                directions =
                "Pick the Streetkid life path.",
                requirement = "Streetkid life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_streetkid_pants",
                name = "V's streetwear pants",
                baseID = "Q000_StreetKid_Pants",
                directions =
                "Pick the Streetkid life path.",
                requirement = "Streetkid life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "v_streetkid_boots",
                name = "V's street tongues/kicks",
                baseID = "Q000_StreetKid_Shoes",
                directions =
                "Pick the Streetkid life path.",
                requirement = "Streetkid life path",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "The Star",
        entries = {
            {
                id = "aldecaldos_epilogue_jacket",
                name = "Aldecaldos rally bolero jacket",
                baseID = "Q114_Aldecaldo_Jacket",
                directions =
                "The clothing that V wears during the All Along the Watchtower ending.",
                requirement = "The Star ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "star_epilogue_tank_top",
                name = "V's Black Tank Top",
                baseID = "Q202_Epilogue_TShirt",
                directions =
                "The clothing that V wears during the All Along the Watchtower ending.",
                requirement = "The Star ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "star_epilogue_leggings",
                name = "V's New Leggings",
                baseID = "Q202_Epilogue_Pants",
                directions =
                "The clothing that V wears during the All Along the Watchtower ending.",
                requirement = "The Star ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "star_epilogue_sneakers",
                name = "V's Muddy Sneakers",
                baseID = "Q202_Epilogue_Boots",
                directions =
                "The clothing that V wears during the All Along the Watchtower ending.",
                requirement = "The Star ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "The Sun",
        entries = {
            {
                id = "sun_epilogue_glasses",
                name = "V's Golden Aviators",
                baseID = "Q203_Epilogue_Glasses",
                directions =
                "The clothing that V wears during the Path of Glory ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "sun_epilogue_tshirt",
                name = "V's Shirt",
                baseID = "Q203_Epilogue_TShirt",
                directions =
                "The clothing that V wears during the Path of Glory ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "sun_epilogue_leggings",
                name = "V's Expensive Leggings",
                baseID = "Q203_Epilogue_Pants",
                directions =
                "The clothing that V wears during the Path of Glory ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "sun_epilogue_boots",
                name = "V's Gold-Plated Boots",
                baseID = "Q203_Epilogue_Boots",
                directions =
                "The clothing that V wears during the Path of Glory ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    },
    {
        category = "Temperance",
        entries = {
            {
                id = "temperance_epilogue_tshirt",
                name = "Johnny's Shirt",
                baseID = "Q204_Epilogue_TShirt",
                directions =
                "The clothing that Johnny Silverhand wears during the New Dawn Fades ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "temperance_epilogue_pants",
                name = "Johnny's Pants",
                baseID = "Q204_Epilogue_Pants",
                directions =
                "The clothing that Johnny Silverhand wears during the New Dawn Fades ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            },
            {
                id = "temperance_epilogue_boots",
                name = "Johnny's Boots",
                baseID = "Q204_Epilogue_Boots",
                directions =
                "The clothing that Johnny Silverhand wears during the New Dawn Fades ending.",
                requirement = "The Sun ending",
                fast_travel = "",
                coords = { x = 0, y = 0, z = 0, yaw = 0 },
                district = "",
                sub_district = ""
            }
        }
    }--]]
}

return ClothingSetsDB
