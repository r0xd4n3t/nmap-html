<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
      <title>Nmap Scan Report</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"><xsl:comment>script</xsl:comment></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"><xsl:comment>script</xsl:comment></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"><xsl:comment>script</xsl:comment></script>
      <style type="text/css">
        body { font-family: Arial, sans-serif; font-size: 14px; }
        .table td, .table th { padding: .5rem; vertical-align: top; }
        .table thead th { vertical-align: bottom; }
        .table-responsive { max-width: 100%; }
      </style>
    </head>
    <body>
      <div class="container">
        <h1 class="mt-4 mb-4">Nmap Scan Report</h1>
        <div class="row">
          <div class="col-sm-6">
            <h2>Scan Summary</h2>
            <table class="table">
              <tbody>
                <tr>
                  <th>Scan args:</th>
                  <td><xsl:value-of select="nmaprun/@args"/></td>
                </tr>
                <tr>
                  <th>Scan Started:</th>
                  <td><xsl:value-of select="nmaprun/@startstr"/></td>
                </tr>
                <tr>
                  <th>Scan Completed:</th>
                  <td><xsl:value-of select="nmaprun/runstats/finished/@timestr"/></td>
                </tr>
                <tr>
                  <th>Scan Duration:</th>
                  <td><xsl:value-of select="nmaprun/runstats/finished/@elapsed"/></td>
                </tr>
                <tr>
                  <th>Nmap Version:</th>
                  <td><xsl:value-of select="nmaprun/@version"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-sm-6">
            <h2>Host(s)</h2>
            <table class="table">
              <tbody>
                <tr>
                  <th>Total:</th>
                  <td><xsl:value-of select="nmaprun/runstats/hosts/@total"/></td>
                </tr>
                <tr>
                  <th>Up:</th>
                  <td><xsl:value-of select="nmaprun/runstats/hosts/@up"/></td>
                </tr>
                <tr>
                  <th>Down:</th>
                  <td><xsl:value-of select="nmaprun/runstats/hosts/@down"/></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <hr/>
        <xsl:apply-templates select="nmaprun"/>
      </div>
    </body>
  </html>
</xsl:template>

<xsl:template match="nmaprun">
  <xsl:apply-templates select="host"/>
</xsl:template>

<xsl:template match="host">
  <h2 class="mt-4 mb-4">Host: <xsl:value-of select="address/@addr" disable-output-escaping="yes"/></h2>
  <h4>Mac Address: <xsl:value-of select="address[@addrtype='mac']/@addr" disable-output-escaping="yes"/> Vendor: <xsl:value-of select="address/@vendor" disable-output-escaping="yes"/></h4>
  <h4>Hostname: <xsl:value-of select="hostnames/hostname/@name" disable-output-escaping="yes"/></h4>
  <h3>Ports</h3>
  <div class="table-responsive">
    <table class="table table-bordered table-striped">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Protocol</th>
		  <th scope="col">Port</th>
          <th scope="col">State</th>
          <th scope="col">Service</th>
          <th scope="col">Reason</th>
          <th scope="col">Product</th>
          <th scope="col">Version</th>
          <th scope="col">Extra Info</th>
        </tr>
      </thead>
      <tbody>
        <xsl:apply-templates select="ports/port"/>
      </tbody>
    </table>
  </div>
</xsl:template>

<xsl:template match="port">
  <tr>
    <td><xsl:value-of select="@protocol" disable-output-escaping="yes"/></td>
	<td><xsl:value-of select="@portid" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="state/@state" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="service/@name" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="state/@reason" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="service/@product" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="service/@version" disable-output-escaping="yes"/></td>
    <td><xsl:value-of select="service/@extrainfo" disable-output-escaping="yes"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>