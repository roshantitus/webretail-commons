/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.beans.Transient;
import java.util.Calendar;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.OrderStatus;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
@NamedQueries({@NamedQuery(name="findOrdersByStatus", query="from OrderBean orderBean where orderBean.orderStatus IN :params"), 
	@NamedQuery(name="findOrderCountByStatus", query="select count(orderBean) from OrderBean orderBean where orderBean.orderStatus IN :params"), })
@Table(name="order")
public class OrderBean extends BaseBean{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7738171511465403764L;

	private Calendar orderDate;
	private OrderStatus orderStatus;
	private AddressBean billingAddress;
	private AddressBean deliveryAddress;
	private PaymentBean payment;
	private ShipmentBean shipment;
	private DeliveryBean delivery;
	private UserBean user;
	private CouponBean coupon;
	private List<OrderLineItemBean> items;
	private InvoiceBean invoice;
	
	/**
	 * @return
	 */
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "order_id")	
	public Long getOrderId() {
		return id;
	}

	/**
	 * @param orderId
	 */
	public void setOrderId(Long orderId) {
		this.id = orderId;
		
	}
	@Column(name = "order_date")	
	@Temporal(TemporalType.DATE)	
	public Calendar getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Calendar orderDate) {
		this.orderDate = orderDate;
	}

	@Column(name = "order_status")	
	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="billing_address_id", unique=false, nullable=true, updatable=true)	
	public AddressBean getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(AddressBean billingAddress) {
		this.billingAddress = billingAddress;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="delivery_address_id", unique=false, nullable=true, updatable=true)		
	public AddressBean getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(AddressBean deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="payment_id", unique=true, nullable=true, updatable=true)		
	public PaymentBean getPayment() {
		return payment;
	}

	public void setPayment(PaymentBean payment) {
		this.payment = payment;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="shipment_id", unique=true, nullable=true, updatable=true)	
	public ShipmentBean getShipment() {
		return shipment;
	}

	public void setShipment(ShipmentBean shipment) {
		this.shipment = shipment;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="delivery_id", unique=true, nullable=true, updatable=true)		
	public DeliveryBean getDelivery() {
		return delivery;
	}

	public void setDelivery(DeliveryBean delivery) {
		this.delivery = delivery;
	}

	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=false, nullable=false, updatable=true)		
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="coupon_id", unique=false, nullable=false, updatable=true)		
	public CouponBean getCoupon() {
		return coupon;
	}

	public void setCoupon(CouponBean coupon) {
		this.coupon = coupon;
	}

	@OneToMany(mappedBy="order", fetch = FetchType.EAGER)	
	public List<OrderLineItemBean> getItems() {
		return items;
	}

	public void setItems(List<OrderLineItemBean> items) {
		this.items = items;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="invoice_id", unique=true, nullable=true, updatable=true)		
	public InvoiceBean getInvoice() {
		return invoice;
	}

	public void setInvoice(InvoiceBean invoice) {
		this.invoice = invoice;
	}	
	
	@Transient
	public Double totalAmount()
	{
		Double totalAmount = 0.0;
		if(null != getItems())
		{
			for(OrderLineItemBean item : getItems())
			{
				totalAmount += item.itemTotal();
			}
		}
		return totalAmount;
	}	
}
