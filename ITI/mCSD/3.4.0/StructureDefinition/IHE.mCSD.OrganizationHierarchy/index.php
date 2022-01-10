<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.html');
else 
  Redirect('http://profiles.ihe.net/ITI/mCSD/3.4.0/StructureDefinition-IHE.mCSD.OrganizationHierarchy.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
