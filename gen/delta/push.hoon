::  push a value to an optional target ship presumed our
::
::  :delta|push 10
::  :delta|push ~sampel 20
::
:-  %say
|=  $:  [@ @ our=@p ^]
        args=?([value=@ ~] [target=@p value=@ ~])
        ~
    ==
=,  args
:-  %delta-action
?-  args
  [@ ~]    [%push our value]
  [@ @ ~]  [%push target value]
==
