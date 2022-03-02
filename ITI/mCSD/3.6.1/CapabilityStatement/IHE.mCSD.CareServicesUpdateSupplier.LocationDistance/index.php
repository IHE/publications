<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.html');
else 
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/CapabilityStatement-IHE.mCSD.CareServicesUpdateSupplier.LocationDistance.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
