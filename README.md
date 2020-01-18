# MIPS-pipeline
This is my Lab assignments for the course Computer Architecture, Zhejiang University. My course tutor is Jiang Xiaohong.

Finally we finish a pipeline CPU supporting stall, forwarding, predit-not-taken and interrupt.

### Lab1 Warm up
Extend single-cycle CPU(in Org) to run on Sword V4.


### Lab2 Basic pipeline 
5-stage pipelined CPU with 23 MIPS instructions. 

Execute program in pipeline correctly implementing "stall" when have hazards, using flushing approach to solve control hazard. 

![Lab2](/figure/Lab2_cpu.jpg)


### Lab3 Forwarding and predit-not-taken
Implement forwarding paths and predict-not-taken
to make CPU run faster.

![Lab3](/figure/Lab3_cpu.jpg)


### Lab4 pipelined CPU with interruption 
Design of Pipelined CPU supporting Interrupt, adding co-processor CP0.

Warning: VGA-debug has strange bugs(jump doesn't work), but simulation is correct.

![Lab4](/figure/Lab4_cpu.jpg)