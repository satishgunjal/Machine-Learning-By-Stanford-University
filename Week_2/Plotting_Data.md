## Octave / Matlab Tutorial:
### Plotting Data
1. Sine function

    ```
    >> t= [0:0.01:0.98] % array of data (time values)
    t =

     Columns 1 through 11:

       0.00000   0.01000   0.02000   0.03000   0.04000   0.05000   0.06000   0.07000   0.08000   0.09000   0.10000

     Columns 12 through 22:

       0.11000   0.12000   0.13000   0.14000   0.15000   0.16000   0.17000   0.18000   0.19000   0.20000   0.21000

     Columns 23 through 33:

       0.22000   0.23000   0.24000   0.25000   0.26000   0.27000   0.28000   0.29000   0.30000   0.31000   0.32000

     Columns 34 through 44:

       0.33000   0.34000   0.35000   0.36000   0.37000   0.38000   0.39000   0.40000   0.41000   0.42000   0.43000

     Columns 45 through 55:

       0.44000   0.45000   0.46000   0.47000   0.48000   0.49000   0.50000   0.51000   0.52000   0.53000   0.54000

     Columns 56 through 66:

       0.55000   0.56000   0.57000   0.58000   0.59000   0.60000   0.61000   0.62000   0.63000   0.64000   0.65000

     Columns 67 through 77:

       0.66000   0.67000   0.68000   0.69000   0.70000   0.71000   0.72000   0.73000   0.74000   0.75000   0.76000

     Columns 78 through 88:

       0.77000   0.78000   0.79000   0.80000   0.81000   0.82000   0.83000   0.84000   0.85000   0.86000   0.87000

     Columns 89 through 99:

       0.88000   0.89000   0.90000   0.91000   0.92000   0.93000   0.94000   0.95000   0.96000   0.97000   0.98000

    >> y1 = sin(2*pi*4*t); % note ';' here, used it avoide printing the values of y1
    >> plot(t,y1); % to plot sin function where 'time' on X axis and y1 on Y axis
    >>
    ```
   <img src="Week_2/plots/sine function.gif" width="500">
   
2. Plot two functions on top of each other

    ```
    >> y1 = sin(2*pi*4*t); % note ';' here, used it avoide printing the values of y1
    >> plot(t,y1); % to plot sin function where 'time' on X axis and y1 on Y axis
    >> y2 = cos(2*pi*4*t);
    >> plot(t, y2); % to plot cosine function where 'time' on X axis and y2 on Y axis
    >> plot(t, y1); % sine plot will override the cosine plot
    >> hold on; % hold on will allow current plot to stay on
    >> plot(t,y2,'r'); % plot cosine function in different(here red) color on top of existing plot
    >> xlabel('time')
    >> ylabel('value')
    >> legend('sin','cos')
    >> title('sine cosine plot');
    >> print -dpng 'sine_cosine_plot.png' % save file in png format
    >> close % to close the plot
    >>
    ```
    <img src="Week_2/plots/sine_cosine_plot.png" width="500">
