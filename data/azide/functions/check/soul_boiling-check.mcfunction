#灵魂沸腾成就检测
execute as @a if score @s soul matches 100.. run function azide:adv/soul_boiling
#灵魂沸腾成就移除
execute as @a[team=!red,team=!blue] run function azide:reset/soul_boiling-reset