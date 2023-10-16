/+  *test
/=  agent  /app/delta
|%
+$  state
  $:  [%0 values=(list @)]
  ==
::
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %hark-store]
    [~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %your-desk ud+run]]
  ==
::
++  test-delta-push
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 10]))
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 20]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[20 10]
    !>  values.state
::
++  test-delta-pop
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 10]))
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 20]))
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%pop ~zod]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[10]
    !>  values.state
++  test-delta-pop-empty
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%pop ~zod]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~
    !>  values.state
--
