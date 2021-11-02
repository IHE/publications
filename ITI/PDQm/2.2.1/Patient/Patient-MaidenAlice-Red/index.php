<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PDQm/2.2.1/Patient-Patient-MaidenAlice-Red.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
