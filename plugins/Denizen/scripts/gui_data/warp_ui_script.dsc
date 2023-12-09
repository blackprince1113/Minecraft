warp_gui:
    type: inventory
    inventory: CHEST
    debug: fales
    title: <&c>Warp<&f>
    size: 27
    gui: true
    slots:
    - [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane]
    - [glass_pane] [warp5_button_item] [warp6_button_item] [warp1_button_item] [warp2_button_item] [warp3_button_item] [warp7_button_item] [] [glass_pane]
    - [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane] [glass_pane]

warp1_button_item:
    type: item
    debug: fales
    material: iron_horse_armor
    display name: <&2>Warp <&6>Npc1
    lore:
    - <&7>Click here to press the button for go to The Citizen.

warp2_button_item:
    type: item
    debug: fales
    material: emerald
    display name: <&2>Warp <&6>Npc2
    lore:
    - <&7>Click here to press the button for go to The Citizen.

warp3_button_item:
    type: item
    debug: fales
    material: emerald
    display name: <&2>Warp <&6>Npc3
    lore:
    - <&7>Click here to press the button for go to The Citizen.

warp4_button_item:
    type: item
    debug: fales
    material: dirt
    display name: <&2>Warp <&1>Deep City
    lore:
    - <&7>Click here to press the button for go to The City.

warp5_button_item:
    type: item
    debug: fales
    material: snowball
    display name: <&2>Warp <&b>Ice
    lore:
    - <&7>Click here to press the button for go to The Icetales.

warp6_button_item:
    type: item
    debug: fales
    material: snow_block
    display name: <&2>Warp <&b>Ice2
    lore:
    - <&7>Click here to press the button for go to The Icetales.

warp7_button_item:
    type: item
    debug: fales
    material: weeping_vines
    display name: <&2>Warp <&a>Swamp
    lore:
    - <&7>Click here to press the button for go to The Swamp.

warp1_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp1_button_item in warp_gui:
        - execute as_op "warp npc1"
        - inventory close

warp2_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp2_button_item in warp_gui:
        - execute as_op "warp npc2"
        - inventory close

warp3_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp3_button_item in warp_gui:
        - execute as_op "warp npc3"
        - inventory close

warp4_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp4_button_item in warp_gui:
        - execute as_op "warp city"
        - inventory close

warp5_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp5_button_item in Warp_Gui:
        - execute as_op "warp ice"
        - inventory close

warp6_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp6_button_item in warp_gui:
        - execute as_op "warp ice2"
        - inventory close

warp7_gui_events:
    debug: fales
    type: world
    events:
        after player clicks warp7_button_item in warp_gui:
        - execute as_op "warp swamp"
        - inventory close

gui_open:
    type: command
    description: guiopen
    debug: fales
    name: guiopen
    usage: /guiopen
    permission: guio.warp.open
    script:
         - inventory open d:warp_gui

anti_drags_gui:
    type: world
    debug: fales
    events:
        on player drags in warp_gui:
        - determine cancelled