fun total(cart: Cart?): Int {
    println("cart=$cart")
    return cart!!.items.sumOf { it.price }
}
