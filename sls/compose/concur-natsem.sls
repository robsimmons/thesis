ev/chan:    ev (chan C) (chan C).

ev/always:  ev (always E1) (always V1)
             <- ev E1 V1.

ev/recv:    ev (recv E1) (recv V1)
             <- ev E1 V1.

ev/send:    ev (send E1 E2) (send V1 V2)
             <- ev E1 V1
             <- ev E2 V2.

ev/choose:  ev (choose E1 E2) (choose V1 V2)
             <- ev E1 V1
             <- ev E2 V2.

ev/never:   ev never never.

ev/wrap:    ev (wrap E1 \x. E2 x) (wrap V1 \x. E2 x)
             <- ev E1 V1. 