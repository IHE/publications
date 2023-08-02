<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.html');
else 
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0-comment/CapabilityStatement-IHE.NPFS.FileSource.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
