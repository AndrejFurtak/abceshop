$(document).ready(function()
{
        updateAddressDisplay('delivery', true);
	updateAddressDisplay('invoice', true);
});

function updateAddress(addressType, onLoad){
    updateAddressDisplay(addressType);
    
    if (!onLoad){
        updateAddresses();
    }
}

function updateAddressDisplay(addressType)
{
	var idAddress = $('select#id_address_' + addressType + '').val();
        var baseAddressPath = 'div#address_' + addressType + ' table ';

        // update address
	$(baseAddressPath + 'tr.address_company td.value').html(addresses[idAddress][0]);

	if(addresses[idAddress][0] == '')
		$(baseAddressPath + 'tr.address_company').hide();
	else
		$(baseAddressPath + 'tr.address_company').show();
	$(baseAddressPath + 'tr.address_name td.value').html(addresses[idAddress][1] + ' ' + addresses[idAddress][2]);
	$(baseAddressPath + 'tr.address_address1 td.value').html(addresses[idAddress][3]);
	$(baseAddressPath + 'tr.address_address2 td.value').html(addresses[idAddress][4]);
	if(addresses[idAddress][4] == '')
		$(baseAddressPath + 'tr.address_address2').hide();
	else
		$(baseAddressPath + 'tr.address_address2').show();
	$(baseAddressPath + 'tr.address_city td.value').html(addresses[idAddress][5] + ' ' + addresses[idAddress][6]);
	$(baseAddressPath + 'tr.address_country td.value').html(addresses[idAddress][7] + (addresses[idAddress][8] != '' ? ' (' + addresses[idAddress][8] +')' : ''));
        
	// change update link
	var link = $('div#address_' + addressType + ' a.modifyAddress').attr('href');
	var expression = /id_address=\d+/;

	link = link.replace(expression, 'id_address=' + idAddress);
        
	$('div#address_' + addressType + ' a.modifyAddress').attr('href', link);
}

function updateAddresses()
{
	var idAddress_delivery = $('select#id_address_delivery').val();
	var idAddress_invoice = $('select#id_address_invoice').val();

   $.ajax({
           type: 'POST',
           url: baseDir + 'order.php',
           async: true,
           cache: false,
           dataType : "json",
           data: 'processAddress=true&step=2&ajax=true&id_address_delivery=' + idAddress_delivery + '&id_address_invoice=' + idAddress_invoice+ '&token=' + static_token ,
           success: function(jsonData)
           {
           		if (jsonData.hasError)
				{
					var errors = '';
					for(error in jsonData.errors)
						//IE6 bug fix
						if(error != 'indexOf')
							errors += jsonData.errors[error] + "\n";
					alert(errors);
				}
			},
           error: function(XMLHttpRequest, textStatus, errorThrown) {alert("TECHNICAL ERROR: unable to save adresses \n\nDetails:\nError thrown: " + XMLHttpRequest + "\n" + 'Text status: ' + textStatus);}
       });
}