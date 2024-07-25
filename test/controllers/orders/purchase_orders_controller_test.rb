require "test_helper"

module Orders
  class PurchaseOrdersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @purchase_order = orders_purchase_orders(:one)
    end

    test "should get index" do
      get purchase_orders_url
      assert_response :success
    end

    test "should get new" do
      get new_purchase_order_url
      assert_response :success
    end

    test "should create purchase_order" do
      assert_difference("PurchaseOrder.count") do
        post purchase_orders_url, params: { purchase_order: { order_date: @purchase_order.order_date, order_number: @purchase_order.order_number, status: @purchase_order.status, supplier: @purchase_order.supplier, total_amount: @purchase_order.total_amount } }
      end

      assert_redirected_to purchase_order_url(PurchaseOrder.last)
    end

    test "should show purchase_order" do
      get purchase_order_url(@purchase_order)
      assert_response :success
    end

    test "should get edit" do
      get edit_purchase_order_url(@purchase_order)
      assert_response :success
    end

    test "should update purchase_order" do
      patch purchase_order_url(@purchase_order), params: { purchase_order: { order_date: @purchase_order.order_date, order_number: @purchase_order.order_number, status: @purchase_order.status, supplier: @purchase_order.supplier, total_amount: @purchase_order.total_amount } }
      assert_redirected_to purchase_order_url(@purchase_order)
    end

    test "should destroy purchase_order" do
      assert_difference("PurchaseOrder.count", -1) do
        delete purchase_order_url(@purchase_order)
      end

      assert_redirected_to purchase_orders_url
    end
  end
end
