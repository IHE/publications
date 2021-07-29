<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.html');
else 
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/CapabilityStatement-IHE_PIXm_Source.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
