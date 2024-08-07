<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.html');
else 
  Redirect('https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/CapabilityStatement-IHE.QEDm.Clinical-Data-Source.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
