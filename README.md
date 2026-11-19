ColorBrewer
==============

Web tool for guidance in choosing choropleth map color schemes, based on the research of [Dr. Cynthia Brewer](https://www.geog.psu.edu/directory/cynthia-brewer). Originally built and maintained by [Axis Maps](https://www.axismaps.com) at [colorbrewer2.org](https://colorbrewer2.org/); this fork is modernized (responsive layout, no jQuery/Flash, HSL and HCL output) and hosted at [www.getthom.com/huebrew/](https://www.getthom.com/huebrew/).

## Develop

Plain static files, no dependencies. Serve the folder and open it:

```
python3 -m http.server 8123
```

## Deploy

`scripts/build.sh <out-dir>` copies the deployable files (everything but `flash/` and repo files) into a folder. The portfolio site runs it through `npm run build:huebrew`, which writes to `portfolio/public/huebrew/`; commit that output there and push to deploy.
