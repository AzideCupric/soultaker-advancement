#让一追二成就检测

#红方第一局胜利，蓝方追赢二局
execute if score #round round matches 1 if score RedTeam round matches 1 run tag @a[team=blue] add lost_first
execute as @a[team=blue,tag=lost_first] if score #round round matches 4 if score Blueteam round matches 2 run function azide:adv/lost_but_win
#蓝方第一局胜利,红方追赢二局
execute if score #round round matches 1 if score BlueTeam round matches 1 run tag @a[team=red] add lost_first
execute as @a[team=red,tag=lost_first] if score #round round matches 4 if score RedTeam round matches 2 run function azide:adv/lost_but_win

#让一追二成就移除
execute as @a if score #round round matches ..1 run function azide:reset/lost_but_win-reset