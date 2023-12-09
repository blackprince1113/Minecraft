chat_sound:
    type: world
    debug: false
    events:
        on player chats:
        - foreach <server.online_players||null> as:player:
            - playsound <[player]> sound:ENTITY_ITEM_PICKUP volume:1 pitch:1 sound_category:MASTER