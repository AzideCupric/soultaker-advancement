#连胜两局成就检测
execute as @a[team=red] if score #round round matches 3 if score RedTeam round matches 2 if score BlueTeam round matches 0 run function azide:adv/double_wins
execute as @a[team=blue] if score #round round matches 3 if score BlueTeam round matches 2 if score RedTeam round matches 0 run function azide:adv/double_wins
#连胜两局成就移除
execute as @a if score #round round matches ..1 run function azide:reset/double_wins-reset