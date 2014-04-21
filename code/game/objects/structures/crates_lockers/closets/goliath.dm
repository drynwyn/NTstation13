obj/structure/closet/goliath
  desc = "The corpse of a goliath. You might be able to cut it open with something sharp..."
  icon_state = "Goliath_dead"//CHECK ON THIS BRO
  icon_closed = "Goliath_dead"
  icon_open = "I need a sprite for this"//done checking
  health = 9001//So you can't destroy it with lasers
  
obj/structure/closet/goliath/attack_hand(mob/user as mob)
  if(src.opened)
   user << "<span class='notice'>You pull the hole goliath's corpse tightly closed, and the flesh melts together to seal it.</span>'
   return src.close()
  return
  
obj/structure/closet/goliath/attackby(obj/item/weapon/W as obj, mob/user as mob)
  if(istype(W,/obj/item/weapon/pickaxe)
    src.open()
    user << "<span class='notice'>You prise apart the flesh of the goliath's corpse!</span>"
  else if(istype(W,/obj/item/weapon/lazarus_injector)
    new /mob/living/simple_animal/hostile/asteroid/goliath
    qdel(src)
    log_game ("[user] has revived hostile mob goliath with a lazarus injector.")
  else if(istype(W, /obj/item/weapon/melee/energy/sword))
		var/obj/item/weapon/melee/energy/sword/S = W
		if(S.active)
			user.visible_message("<span class='notice'>[user] slices the goliath open with his energy sword. Ugh, and you thought they smelled bad on the outside!</span>"
      src.open()
  return
  
obj/structure/closet/goliath/ex_act(severity)//this makes the corpse and those within immune to explosions.
  return
  
