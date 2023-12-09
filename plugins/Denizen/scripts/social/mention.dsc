mention_handler:
    type: world
    debug: false
    events:
        on player chats:
            - if !<player.is_op>:
                - stop
            - define message <context.message.strip_color>
            - if !<[message].contains_any_text[<&at>]>:
                - stop
            - define word <[message].split[<&sp>]>
            - foreach <[word]>:
                - if !<[value].contains_any_text[<&at>]>:
                    - foreach next
                - define player_name <[value].replace_text[<&at>]>
                - if <[player_name].to_lowercase> == everyone && <player.is_op>:
                    - foreach <server.online_players> as:player:
                        - if <[player]> == <player>:
                            - foreach next
                        - define mention:->:<[player]>
                    - define message <[message].replace_text[regex:<[value]>].with[<&color[b]><&at>Everyone<&color[f]>]>
                    - if <[player]||null> == null:
                        - determine <[message]>
                    - playsound <[mention]> ENTITY_BAT_AMBIENT volume:1 pitch:0.1 sound_category:MASTER
                    - title "title:<&sp>" "subtitle:<&color[gold]><player.name> <&color[white]>is mention you!" fade_in:1s stay:3s fade_out:1s targets:<[mention]>
                    - determine <[message]>
                - if !<server.match_player[<[player_name]>].is_online||false>:
                    - foreach next
                - define player <server.match_player[<[player_name]>]>
                - if <[mention].find_all[<[player_name]>].get[0]||0> < 1:
                    - define mention:->:<[player_name]>
                    - define message <[message].replace_text[regex:<[value]>].with[<&color[b]><&at><[player_name]><&color[f]>]>
            - if !<[mention].is_empty||true>:
                - define default_color f
                - foreach <[mention]>:
                    - playsound <[player]> ENTITY_BAT_AMBIENT volume:1 pitch:0.1 sound_category:MASTER
                    - title "title:<&sp>" "subtitle:<&color[gold]><player.name> <&color[white]>is mention you!" fade_in:1s stay:3s fade_out:1s targets:<[player]>
                - determine <[message]>