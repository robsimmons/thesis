ev/letcc:  eval (letcc \x. E x) D >-> {eval (E (contn D)) D}.
ev/throw2: retn (contn DK) D2 * !cont (throw2 V1) D2 D
            >-> {retn V1 DK}.