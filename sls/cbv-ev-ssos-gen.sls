gen: prop ord.

#rule gen/eval: gen >-> {eval E}.
#rule gen/retn: gen >-> {retn E}.
#rule gen/cont: gen >-> {cont F * gen}.