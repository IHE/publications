<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.html');
else 
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Organization-890751f4-2924-4636-bab7-efffc7f3cf15.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
