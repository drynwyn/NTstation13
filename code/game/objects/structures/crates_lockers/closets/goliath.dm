obj/structure/closet/goliath
  desc = "The corpse of a goliath. You might be able to cut it open with something sharp..."
  icon_state = "whateveradeadgoliathis"//CHECK ON THIS BRO
  icon_closed = "whateveradeadgoliathis"
  icon_open = "I need a sprite for this"//done checking
  health = 9001
  
obj/structure/closet/goliath/attack_hand(mob/user as mob)
  if(src.opened)
   user << "<span class='notice'>You pull the hole goliath's corpse tightly closed, and the flesh melts together to seal it.</span>'
   return src.close()
  return
  
obj/structure/closet/goliath/attackby(obj/item/weapon/W as obj, mob/user as mob)
  if(istype(W,/obj/item/weapon/pickaxe)
    src.open()
    user << "<span class='notice'>You prise apart the flesh of the goliath's corpse!</span>"
  //Stuff for Lazarus injectors needs to go here
  
  
obj/structure/closet/goliath/ex_act(severity)
  return
  
