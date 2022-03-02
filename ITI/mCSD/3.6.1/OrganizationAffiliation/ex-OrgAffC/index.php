<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.html');
else 
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.6.1/OrganizationAffiliation-ex-OrgAffC.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
