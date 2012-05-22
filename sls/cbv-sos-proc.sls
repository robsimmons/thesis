eval-ev: exp -> prop ord.
retn-ev: exp -> prop ord.
ev/steps: eval-ev E * !step E E' >-> {eval-ev E'}.
ev/value: eval-ev V * !value V >-> {retn-ev V}.