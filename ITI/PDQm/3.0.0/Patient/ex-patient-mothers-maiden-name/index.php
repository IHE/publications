<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PDQm/3.0.0/Patient-ex-patient-mothers-maiden-name.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
