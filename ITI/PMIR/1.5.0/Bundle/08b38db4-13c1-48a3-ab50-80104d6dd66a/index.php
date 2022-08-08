<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
