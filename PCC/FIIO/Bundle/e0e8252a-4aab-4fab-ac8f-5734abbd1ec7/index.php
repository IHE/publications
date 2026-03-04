<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html');
else 
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
