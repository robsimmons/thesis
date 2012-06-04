gen: prop ord.
#rule gen/eval: gen >-> {eval E}.
#rule gen/retn: gen >-> {retn V}.
#rule gen/cont: gen >-> {gen * cont F}.