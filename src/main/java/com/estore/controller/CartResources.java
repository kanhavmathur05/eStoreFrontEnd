package com.estore.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.estore.model.Cart;
import com.estore.model.CartItem;
import com.estore.model.Customer;
import com.estore.model.Product;
import com.estore.service.CartItemService;
import com.estore.service.CartService;
import com.estore.service.CustomerService;
import com.estore.service.ProductService;

@Controller
@RequestMapping("/rest/cart")
public class CartResources {
	@Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProductService productService;

    @RequestMapping("/{cartID}")
    public @ResponseBody Cart getCartByID(@PathVariable(value = "cartID") int cartID){
        return cartService.getCartByID(cartID);
    }

    @RequestMapping(value = "/add/{productID}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value = "productID") int productID, Principal P){
        Customer customer=customerService.getCustomerByUsername(P.getName());
        Cart cart = customer.getCart();
        Product product = productService.getProductByID(productID);
        List<CartItem> cartItems=cart.getCartItems();

        for (int i=0;i<cartItems.size();i++){
            if(product.getProductID()==cartItems.get(i).getProduct().getProductID()){
                CartItem cartItem = cartItems.get(i);
                cartItem.setQuantity(cartItem.getQuantity() + 1);
                cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
                cartItemService.addCartItem(cartItem);

                return;
            }
        }

        CartItem cartItem=new CartItem();
        cartItem.setProduct(product);
        cartItem.setQuantity(1);
        cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
        cartItem.setCart(cart);
        cartItemService.addCartItem(cartItem);
    }

    @RequestMapping(value = "/remove/{productID}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable(value = "productID") int productID){
        CartItem cartItem = cartItemService.getCartItemByProductID(productID);
        cartItemService.removeCartItem(cartItem);

    }

    @RequestMapping(value = "/{cartID}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartID") int cartID){
        Cart cart = cartService.getCartByID(cartID);
        cartItemService.removeAllCartItems(cart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value=HttpStatus.BAD_REQUEST, reason="Illegal request, please verify your payload")
    public void handleClientErrors (Exception ex){
    }
    @ExceptionHandler(Exception.class)
    @ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR, reason="Internal Server Error")
    public void handleServerErrors (Exception ex){

    }

}
