<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.html');
else 
  Redirect('https://profiles.ihe.net/PCC/FIIO/1.0.0-comment/Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
