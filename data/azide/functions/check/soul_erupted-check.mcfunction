#灵魂爆裂检测
    #蓝队
        #记录当前满灵魂人数
scoreboard players set BlueTeam max_soul_num 0
execute as @a[team=blue] if score @s soul matches 100.. run scoreboard players add BlueTeam max_soul_num 1
        #比较满灵魂数与本队人数
execute if score BlueTeam max_soul_num = #player blueplayer as @a[team=blue] run function azide:adv/soul_erupted
    #红队
        #记录当前满灵魂人数
scoreboard players set RedTeam max_soul_num 0
execute as @a[team=red] if score @s soul matches 100.. run scoreboard players add RedTeam max_soul_num 1
        #比较当前满灵魂人数
execute if score RedTeam max_soul_num = #player redplayer as @a[team=red] run function azide:adv/soul_erupted

#灵魂爆裂移除
execute as @a[team=!blue,team=!red] run function azide:reset/soul_erupted-reset