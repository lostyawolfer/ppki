# per player keep inventory [1.21.4]
and yes it's not a mod nor a plugin it's a DATAPACK!<br>
does not work with doImmediateRespawn tho...<br>
also only works with vanilla inventory slots (if you have some additional accessory slot or backpack mod or something that's not gonna work)...<br>
ok look this thing is not perfect by any means but i had a problem i needed to fix and i solved it for my use case<br>
to be clear all modded items will work, just modded slots won't

### how to use?
by default no one has keep inventory. to give someone keep inventory, do `tag <person> add keepInventory`<br>
to remove it, do `tag <person> remove keepInventory`<br>
spectators have their inventory kept no matter what

### side effects
- dropped items on death drop in a different pattern
- dropped items on death also divide their stacks into halfs or quarters (if you had 64 of something and you die it most likely will drop like 4 different entities with 16 in each or something)
- xp doesn't drop like vanilla minecraft where you have some weird formula that gives you 7 levels after dying with 200, instead you retain ALL the xp you had on death

### how it works?
not that complicated, actually. basically, the actual keepInventory gamerule is always set to true, but i made my own weird way of dropping items.<br>
on your death, it spawns a bunch of chest minecarts, to which all of your inventory gets copied, and then immediately get destroyed, which drops all your items on the ground, and then you get cleared.<br>
since now i am the one in control of dropping items instead of minecraft itself, it's me who decides when to do it. basically for all people that have the tag keepInventory it just ignores all calls of dropping items so-to-speak, so your inventory remains intact.
