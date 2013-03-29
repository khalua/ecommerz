class Ecommerce
  @document_ready: ->
    $('#product_form').on('click', 'a[data-clear-form]', Ecommerce.clear_form)
    $('#search_holder').on('keydown', '#search', Ecommerce.filter_products)

  @clear_form: (e) ->
    e.preventDefault()
    $('#product_form').fadeOut('slow')
    $('#product_button').fadeIn('slow')

  @filter_products: (e) ->
    query = $('#search').val()
    settings =
      dataType: 'script'
      type: 'get'
      url: "/products/search?query=#{query}"
    $.ajax(settings)


$(document).ready(Ecommerce.document_ready)