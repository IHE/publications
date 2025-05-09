{% assign excludexml = site.data.info.excludexml | downcase | slice: 0 %}
{% assign excludejson = site.data.info.excludejson | downcase | slice: 0 %}
{% assign excludettl = site.data.info.excludettl | downcase | slice: 0 %}

Packages:

* [R5 package](./package.tgz)
* [R4 package](./ihe.pharm.mpd.r4.tgz)


Download the entire implementation guide [here](full-ig.zip)

|                     | XML{% unless excludexml == 'y' %}{% endunless %} | JSON{% unless excludejson == 'y' %}{% endunless %} | Turtle{% unless excludettl == 'y' %}{% endunless %} |
|---------------------|--------------------------------------------------|----------------------------------------------------|------------------------------------------------------|
| **Artifact Definitions** | {% unless excludexml == 'y' %}[XML](definitions.xml.zip){% endunless %} | {% unless excludejson == 'y' %}[JSON](definitions.json.zip){% endunless %} | {% unless excludettl == 'y' %}[Turtle](definitions.ttl.zip){% endunless %} |
| **Examples**             | {% unless excludexml == 'y' %}[XML](examples.xml.zip){% endunless %} | {% unless excludejson == 'y' %}[JSON](examples.json.zip){% endunless %} | {% unless excludettl == 'y' %}[Turtle](examples.ttl.zip){% endunless %} |


