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
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ?>  ?=(%noun mark)
  ::  we can validate w/o a mark! but it's more complicated
  =/  action  !<(?([%sub =@p] [%unsub =@p]) vase)
  ?-    -.action
      %sub
    :-  ^-  (list card)
        :~  [%pass /values-wire %agent [p.action %delta] %watch /values]
        ==
    this
  ::
      %unsub
    :-  ^-  (list card)
        :~  [%pass /values-wire %agent [p.action %delta] %leave ~]
        ==
    this
  ==
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  [(list card) _this]
  ?>  ?=([%values-wire ~] wire)
  ?+    -.sign  (on-agent:default wire sign)
      %watch-ack
    ?~  p.sign
      ~&  >  '%delta-follower: subscribe succeeded!'
      [~ this]
    ~&  >>>  '%delta-follower: subscribe failed!'
    [~ this]
  ::
      %kick
    %-  (slog '%delta-follower: Got kick, resubscribing...' ~)
    :-  ^-  (list card)
        :~  [%pass /values-wire %agent [src.bowl %delta] %watch /values]
        ==
    this
  ::
    %fact
    ~&  >>  fact+p.cage.sign
    ?>  ?=(%delta-update p.cage.sign)
    ~&  >>  !<(update q.cage.sign)
    =/  result=update  !<(update q.cage.sign)
    ?-  -.result
      %init
      [~ this(values values.result)]
    ::
      %push
      [~ this(values [value.result values])]
    ::
      %pop
      [~ this(values (slag 1 values))]
    ==
  ==
++  on-watch  on-watch:default
++  on-peek   on-peek:default
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
++  on-arvo   on-arvo:default
++  on-leave  on-leave:default
++  on-fail   on-fail:default
--
