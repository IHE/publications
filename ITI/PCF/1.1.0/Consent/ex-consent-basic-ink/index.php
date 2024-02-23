<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-basic-ink.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
