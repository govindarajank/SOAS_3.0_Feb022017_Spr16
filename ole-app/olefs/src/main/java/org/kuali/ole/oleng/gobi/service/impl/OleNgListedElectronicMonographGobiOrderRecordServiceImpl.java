package org.kuali.ole.oleng.gobi.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.kuali.ole.gobi.datobjects.PurchaseOrder;

/**
 * Created by SheikS on 8/3/2016.
 */
public class OleNgListedElectronicMonographGobiOrderRecordServiceImpl extends OleNgGobiOrderImportServiceImpl {

    private PurchaseOrder.Order.ListedElectronicMonograph.OrderDetail orderDetail;

    @Override
    protected void setDefaultLocation() {
        setDefaultLocation(orderDetail.getLocation());
    }

    @Override
    protected void setListPrice() {
        String listPrice = orderDetail.getListPrice().getAmount().toString();
        if (StringUtils.isNotBlank(listPrice)) {
            setListPrice(listPrice);
        }
    }

    @Override
    protected void setQuantity() {
        setQuantity(orderDetail.getQuantity().toString());
    }

    @Override
    protected void setAccountNumber() {
        setAccountNumber(orderDetail.getFundCode());
    }

    @Override
    protected void setReceiptNote() {
        setReceiptNote(orderDetail.getOrderNotes());
    }

    @Override
    protected void setVendorItemIdentifier() {
        String vendorItemIdentifier = orderDetail.getYBPOrderKey().toString();
        setVendorItemIdentifier(vendorItemIdentifier);
        set980SubFielda(vendorItemIdentifier);
    }

    @Override
    protected String getSubAccount() {
        return getOrder().getCustomerDetail().getSubAccount();
    }

    @Override
    protected void preProcess() {
        orderDetail = getOrder().getOrder().getListedElectronicMonograph().getOrderDetail();
    }


}
