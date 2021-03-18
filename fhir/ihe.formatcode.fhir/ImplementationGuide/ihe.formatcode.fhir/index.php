<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.html');
else 
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.4/ImplementationGuide-ihe.formatcode.fhir.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
