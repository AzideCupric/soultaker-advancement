#累计击杀五人成就检测
execute as @a if score @s kill_count matches 5 run function azide:adv/pentakill
#累计击杀五人成就移除
execute as @a[team=!red,team=!blue] run function azide:reset/pentakill-reset