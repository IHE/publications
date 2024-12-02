<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.1.0/CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
