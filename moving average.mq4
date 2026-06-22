// Simple Moving Average Strategy
int start()
{
double ma = iMA(NULL, 0, 20, 0, MODE_EMA, PRICE_CLOSE, 0);
double price = Close[0];
// Buy condition
if(price > ma)
{
OrderSend(Symbol(), OP_BUY, 0.1, Ask, 2, 0, 0, "Buy Order", 0, 0, Blue);
}
// Sell condition
if(price < ma)
{
OrderSend(Symbol(), OP_SELL, 0.1, Bid, 2, 0, 0, "Sell Order", 0, 0, Red);
}
return(0);
}
