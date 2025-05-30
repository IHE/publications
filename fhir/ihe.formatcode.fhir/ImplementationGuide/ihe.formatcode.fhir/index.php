<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/index.html');
else 
  Redirect('https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/ImplementationGuide-ihe.formatcode.fhir.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
