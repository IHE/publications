<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.html');
else 
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/CapabilityStatement-IHE.BALP.AuditConsumer.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
