::  pop a value from an optional target, presumed our %delta values stack
::
::  :delta|pop
::  :delta|pop ~sampel
::
:-  %say
|=  $:  [@ @ our=@p ^]
        args=?(~ [target=@p ~])
        ~
    ==
[%delta-action [%pop ?~(args our target.args)]]
