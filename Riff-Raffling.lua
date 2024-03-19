--- STEAMODDED HEADER
--- MOD_NAME: Riff-Raffling
--- MOD_ID: FTV
--- MOD_AUTHOR: [UppedHealer8521]
--- MOD_DESCRIPTION: meow:3

----------------------------------------------
------------MOD CODE -------------------------


function SMODS.INIT.FTV () 

    local challenges = G.CHALLENGES
	G.localization.misc.challenge_names["c_mod_ftv_ftv"] = "Riff-Raffling"
    
    table.insert(G.CHALLENGES,#G.CHALLENGES+1,{
        name = 'Riff-Raffling',
        id = 'c_mod_ftv_ftv',
        rules = {
            custom = {
                {id = 'no_reward'},
                {id = 'no_extra_hand_money'},
                {id = 'no_interest'},
                {id = 'no_shop_jokers'},
            },
            modifiers = {
                {id = 'dollars', value = 6},
                {id = 'discards', value = 3},
                {id = 'hands', value = 4},
                {id = 'reroll_cost', value = 5},
                {id = 'joker_slots', value = 6},
                {id = 'consumable_slots', value = 2},
                {id = 'hand_size', value = 8},
            }
        },
        jokers = {
            {id = 'j_riff_raff', edition = 'negative', eternal = true}
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            --enhancement = 'm_glass',
            --edition = 'foil',
            --gold_seal = true,
            --yes_ranks = {['3'] = true,T = true},
            --no_ranks = {['4'] = true},
            --yes_suits = {S=true},
            --no_suits = {D=true},
            -- cards = {},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'c_judgement'},
                {id = 'c_wraith'},
                {id = 'c_ankh'},
                {id = 'c_soul'},
                {id = 'p_buffoon_normal_1', ids = {
                    'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
                }},
                {id = 'v_seed_money'},
                {id = 'v_money_tree'},
                {id = 'j_golden'},
                {id = 'j_business'},
                {id = 'j_egg'},
                {id = 'j_riff_raff'},
                {id = 'j_ticket'},
                {id = 'j_faceless'},
                
               -- {id = 'j_satellite'},
               -- {id = 'j_to_the_moon'},
               -- {id = 'j_midas_mask'},
               -- {id = 'j_rocket'},
               -- {id = 'j_invisible'},
               -- {id = 'j_certificate'},                
            },
            banned_tags = {
                {id = 'tag_rare'},
                {id = 'tag_uncommon'},
                {id = 'tag_holo'},
                {id = 'tag_polychrome'},
                {id = 'tag_negative'},
                {id = 'tag_foil'},
                {id = 'tag_buffoon'},
            },
            banned_other = {
            }
        }
    })


end

----------------------------------------------
------------MOD CODE END----------------------
