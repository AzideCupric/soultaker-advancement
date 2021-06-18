#最终平局检测
execute as @a[team=red] if score #round round matches 4 if score RedTeam round matches 0 if score BlueTeam round matches 0 run function azide:adv/adraw
execute as @a[team=blue] if score #round round matches 4 if score RedTeam round matches 0 if score BlueTeam round matches 0 run function azide:adv/adraw
#最终平局移除
execute as @a if score #round round matches ..1 run function azide:reset/adraw-reset
 