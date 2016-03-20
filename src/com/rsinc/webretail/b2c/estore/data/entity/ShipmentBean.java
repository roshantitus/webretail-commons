/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.rsinc.webretail.b2c.estore.data.entity.enums.ShippingType;

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
	
	private Date shippingDate;

	private Integer shipmentTrackingNo;

	private ShippingCompanyBean shippingCompany;
	
	private ShippingType shippingType;

	private Date expectedArrivalDate;

	private Double shipmentCharges;
	
	private InvoiceBean invoice;
	
	List<ShipmentItemBean> shipmentItems;
	
	private AddressBean shippingAddress;
	
	private Double totalShipmenWeight;

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
	
	@Column(name = "shipping_date")
	public Date getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}

	@Column(name = "shipment_tracking_no")
	public Integer getShipmentTrackingNo() {
		return shipmentTrackingNo;
	}

	public void setShipmentTrackingNo(Integer shipmentTrackingNo) {
		this.shipmentTrackingNo = shipmentTrackingNo;
	}

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

	public InvoiceBean getInvoice() {
		return invoice;
	}

	public void setInvoice(InvoiceBean invoice) {
		this.invoice = invoice;
	}

	public List<ShipmentItemBean> getShipmentItems() {
		return shipmentItems;
	}

	public void setShipmentItems(List<ShipmentItemBean> shipmentItems) {
		this.shipmentItems = shipmentItems;
	}

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

}
