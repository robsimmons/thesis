eval_sos: exp -> prop ord.
retn_sos: exp -> prop ord.
evsos/steps: eval_sos E * !step E E'  >-> {eval_sos E'}.
evsos/value: eval_sos V * !value V >-> {retn_sos V}.