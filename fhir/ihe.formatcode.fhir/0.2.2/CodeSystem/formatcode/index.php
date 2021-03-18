<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.html');
else 
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/0.2.2/CodeSystem-formatcode.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
