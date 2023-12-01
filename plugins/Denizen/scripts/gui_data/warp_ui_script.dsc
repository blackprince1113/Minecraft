Warp_Gui:
    type: inventory
    inventory: CHEST
    debug: true
    title: "<&c>Warp"
    size: 27
    gui: true
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [warp1_button_item] [warp2_button_item] [warp3_button_item] [] [] []
    - [] [] [] [] [] [] [] [] []

warp1_button_item:
    type: item
    debug: true
    material: beacon
    display name: <&2>Warp Npc1 Button
    lore:
    - <&7>Click here to press the button.

warp2_button_item:
    type: item
    debug: true
    material: beacon
    display name: <&2>Warp Npc2 Botton
    lore:
    - <&7>Click here to press the button.

warp3_button_item:
    type: item
    debug: true
    material: beacon
    display name: <&2>Warp Npc3 Botton
    lore:
    - <&7>Click here to press the button.

npc1_gui_world:
    debug: true
    type: world
    events:
        after player clicks warp1_button_item in Warp_Gui:
        - execute as_op "warp npc1"
		- inventory close

npc2_gui_world:
    debug: true
    type: world
    events:
        after player clicks warp2_button_item in Warp_Gui:
        - execute as_op "warp npc2"
		- inventory close

npc3_gui_world:
    debug: true
    type: world
    events:
        after player clicks warp3_button_item in Warp_Gui:
        - execute as_op "warp npc3"
		- inventory close

gui_open:
    type: command
    debug: true
    name: guiopen
    usage: guio
    permission: guio.warp.open
	script:
         - inventory open d:Warp_Gui

anti_drags_gui:
	type: world
	debug: true
	events:
        on player drags in Warp_Gui:
		- determine cancelled