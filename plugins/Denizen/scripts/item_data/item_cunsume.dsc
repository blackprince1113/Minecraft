item_money:
    type: item
    material: paper
    display name: <&f>10$
    enchantments:
    - mending:1
    lore:
        - <&9>The money
        - <&9>Click Rigth on block for use.
take_test:
    type: world
    debug: false
    events:
        on player right clicks block with:item_money:
        - money give quantity:10
        - playsound <player> sound:ENTITY_PLAYER_LEVELUP volume:1 pitch:0.1 sound_category:MASTER
        - narrate "<red>System: <&a>You got 10$! Check on your bank now."
        - take item:item_money