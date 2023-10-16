/-  *delta
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0
  $:  [%0 values=(list @)]
  ==
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  :-  ^-  (list card)
      ~
  %=  this
    state  !<(state-0 old)
  ==
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ?>  ?=(%delta-action mark)
  =/  act  !<(action vase)
  ?-    -.act
      %push
    ?:  =(our.bowl target.act)
      :_  this(values [value.act values])
      [%give %fact ~[/values] %delta-update !>(`update`act)]~
    ?>  =(our.bowl src.bowl)
    :-  ^-  (list card)
        :~  [%pass /pokes %agent [target.act %delta] %poke mark vase]
        ==
    this
  ::
      %pop
    ?:  =(our.bowl target.act)
      :_  this(values ?~(values ~ t.values))
      [%give %fact ~[/values] %delta-update !>(`update`act)]~
    ?>  =(our.bowl src.bowl)
    :-  ^-  (list card)
        :~  [%pass /pokes %agent [target.act %delta] %poke mark vase]
        ==
    this
  ==
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?+  path  (on-peek:default path)
    [%x %top ~]  ``noun+!>(?~(values ~ i.values))
    [%x %values ~]  [~ ~ [%noun !>(values)]]
  ==
++  on-watch
  |=  =path
  ^-  [(list card) _this]
  ?>  ?=([%values ~] path)
  :-  ^-  (list card)
      :~  [%give %fact ~ %delta-update !>(`update`[%init values])]
      ==
  this
++  on-arvo   on-arvo:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--
