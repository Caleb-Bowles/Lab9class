# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
structural verilog can throw an error code when wiring outputs to inputs. Behavioral Verilog tells verilog that you want to store memory and handles the logic better.
### What is the meaning of always @(*) in a sensitivity block?
The always @(*) code tells verilog to update the output when any of the inputs change. 
### What importance is memory to digital circuits?
memory allows a computer to hold onto data, without it, a computer would forget what you type the moment after you typed it. 