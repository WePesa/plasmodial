-module(spk).
-export([acc1/1,acc2/1,entropy/1,
	 code/1,space_gas/1,time_gas/1,
	 new/7,delay/1]).
-record(spk, {acc1, acc2, entropy, 
	      code, space_gas, time_gas, 
	      delay}).
%scriptpubkey is the name that Satoshi gave to this part of the transactions in bitcoin.
%This is where we hold the channel contracts. They are turing complete smart contracts.
%Besides the SPK, there is the ScriptSig. Both participants of the channel sign the SPK, only one signs the SS.

acc1(X) -> X#spk.acc1.
acc2(X) -> X#spk.acc2.
code(X) -> X#spk.code.
delay(X) -> X#spk.delay.
entropy(X) -> X#spk.entropy.
space_gas(X) -> X#spk.space_gas.
time_gas(X) -> X#spk.time_gas.

new(Acc1, Acc2, Entropy, Code, SG, TG, Delay) ->
    #spk{acc1 = Acc1, acc2 = Acc2, entropy = Entropy,
	 code = Code, space_gas = SG, time_gas = TG,
	 delay = Delay}.
