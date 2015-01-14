#property copyright "Copyright, 2015 Quantrade Corp."
#property link      "http: //quantrade.co"

#property indicator_separate_window

<<<<<<< HEAD
#property indicator_buffers 2
#property indicator_color1 clrRed
#property indicator_color2 clrGray

#property indicator_level1 0

extern int limit = 1000;

double Buf_0[];
double Buf_1[];
=======
#property indicator_buffers 1
#property indicator_color1 clrRed

double ma[];
>>>>>>> origin/master

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+

int init()
{
//---- indicators
    SetIndexStyle(0, DRAW_LINE, STYLE_SOLID, 2);
<<<<<<< HEAD
    
    SetIndexBuffer(0, Buf_0);
    SetIndexBuffer(1, Buf_1);
=======
    SetIndexBuffer(0, ma);

>>>>>>> origin/master

//----
    return(0);
}
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
{
//----

//----
    return(0);
}
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{
<<<<<<< HEAD
    int bars = limit;
    int i;

    //getting oscillator
    for (i = bars; i >= 0; i--)
    {
        Buf_0[i] = (High[i]-High[i+10])*(High[i]-High[i+10]) - (Low[i]-Low[i+10])*(Low[i]-Low[i+10]);
    }
    
    //getting trend
    for (i = bars; i >= 0; i--)
    {
        Buf_1[i] = iMAOnArray(Buf_0, 0, 10, 0, 0, i);
=======
    int bars = Bars - 1000;
    int i;

    for (i = bars; i >= 0; i--)
    {
        ma[i] = (High[i] - High[i + 10]) * (High[i] - High[i + 10]) - (Low[i] - Low[i + 10]) * (Low[i] - Low[i + 10]);
>>>>>>> origin/master
    }

//----
    return(0);
}
//+------------------------------------------------------------------+

