<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.html');
else 
  Redirect('http://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.0.0/Bundle-history-IHE-formatcode.codesystem.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
