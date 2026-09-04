<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.html');
else 
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/Bundle-mado-bundle-589331894518000.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
