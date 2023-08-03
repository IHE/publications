<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.html');
else 
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0-comment/Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e8.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
