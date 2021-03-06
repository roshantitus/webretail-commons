/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.Date;
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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.ShipmentStatus;
import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.ShippingType;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="shipment")
public class ShipmentBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5540254897667783185L;
	
	private OrderBean order;
	
	private UserBean recipient;	

	private Date expectedArrivalDate;	
	
	private Date shippedTime;
	
	private Date deliveredTime;

	private Integer shipmentTrackingNo;

	private ShippingCompanyBean shippingCompany;
	
	private ShippingType shippingType;

	private Double shipmentCharges;
	
	private InvoiceBean invoice;
	
	private List<ShipmentItemBean> shipmentItems;
	
	private AddressBean shippingAddress;
	
	private Double totalShipmenWeight;
	
	private ShipmentStatus status;

	public ShipmentBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "shipment_id")
	public Long getShipmentId() {
		return id;
	}	
	
	public void setShipmentId(Long id) {
		this.id = id;
	}		


	@Column(name = "shipment_tracking_no")
	public Integer getShipmentTrackingNo() {
		return shipmentTrackingNo;
	}

	public void setShipmentTrackingNo(Integer shipmentTrackingNo) {
		this.shipmentTrackingNo = shipmentTrackingNo;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="shipping_company_id", unique=false, nullable=true, updatable=true)			
	public ShippingCompanyBean getShippingCompany() {
		return shippingCompany;
	}

	public void setShippingCompany(ShippingCompanyBean shippingCompany) {
		this.shippingCompany = shippingCompany;
	}

	@Column(name = "shipping_type")
	public ShippingType getShippingType() {
		return shippingType;
	}

	public void setShippingType(ShippingType shippingType) {
		this.shippingType = shippingType;
	}

	@Column(name = "expected_arrival_date")
	public Date getExpectedArrivalDate() {
		return expectedArrivalDate;
	}

	public void setExpectedArrivalDate(Date expectedArrivalDate) {
		this.expectedArrivalDate = expectedArrivalDate;
	}

	@Column(name = "shipment_charges")
	public Double getShipmentCharges() {
		return shipmentCharges;
	}

	public void setShipmentCharges(Double shipmentCharges) {
		this.shipmentCharges = shipmentCharges;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="invoice_id", unique=true, nullable=false, updatable=true)		
	public InvoiceBean getInvoice() {
		return invoice;
	}

	public void setInvoice(InvoiceBean invoice) {
		this.invoice = invoice;
	}

	@OneToMany(mappedBy="shipment", fetch = FetchType.EAGER)		
	public List<ShipmentItemBean> getShipmentItems() {
		return shipmentItems;
	}

	public void setShipmentItems(List<ShipmentItemBean> shipmentItems) {
		this.shipmentItems = shipmentItems;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="shipping_address_id", unique=false, nullable=true, updatable=true)		
	public AddressBean getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(AddressBean shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	@Column(name = "total_shipment_weight")
	public Double getTotalShipmenWeight() {
		return totalShipmenWeight;
	}

	public void setTotalShipmenWeight(Double totalShipmenWeight) {
		this.totalShipmenWeight = totalShipmenWeight;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id", unique=true, nullable=false, updatable=true)	
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}

	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=false, nullable=false, updatable=true)		
	public UserBean getRecipient() {
		return recipient;
	}

	public void setRecipient(UserBean recipient) {
		this.recipient = recipient;
	}

	@Column(name = "shipped_time")
	public Date getShippedTime() {
		return shippedTime;
	}

	public void setShippedTime(Date shippedTime) {
		this.shippedTime = shippedTime;
	}

	@Column(name = "delivered_time")
	public Date getDeliveredTime() {
		return deliveredTime;
	}

	public void setDeliveredTime(Date deliveredTime) {
		this.deliveredTime = deliveredTime;
	}

	@Column(name = "shipment_status")	
	public ShipmentStatus getStatus() {
		return status;
	}

	public void setStatus(ShipmentStatus status) {
		this.status = status;
	}	

}
