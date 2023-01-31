# Digital-Clock-on-FPGA

The 4 seven-segment displays on the FPGA board display time in HH:MM format, whereas the 8 Leds display seconds.
The time can adjust by the buttons. This project has five inputs. These are clk (main clock signal), en (active high enable signal), rst (resets all outputs when in logic level 1), hrup and minup (adjust hour and minute values). The digital clock module has six outputs each with four bits. These are s1 and s2 (for second digits), m1 and m2 (for minute digits), h1 and h2 (for hour digits).
