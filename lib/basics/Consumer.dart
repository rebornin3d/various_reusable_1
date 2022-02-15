

Consumer
Now that CartModel is provided to widgets in our app through the ChangeNotifierProvider declaration at the top, we can start using it.

This is done through the Consumer widget.


return Consumer<CartModel>(
  builder = (context, cart, child) {
    return Text("Total price: ${cart.totalPrice}");
  },
);