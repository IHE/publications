<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.html');
else 
  Redirect('http://profiles.ihe.net/ITI/PIXm/2.2.0/Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
