<a id="top"></a>

#

<h1 align="center">
nmap XML to HTML
</h1>

<p align="center"> 
  <kbd>
<img src="https://raw.githubusercontent.com/r0xd4n3t/nmap-html/main/img/nmap.png"></img>
  </kbd>
</p>

<p align="center">
<img src="https://img.shields.io/github/last-commit/r0xd4n3t/nmap-html?style=flat">
<img src="https://img.shields.io/github/stars/r0xd4n3t/nmap-html?color=brightgreen">
<img src="https://img.shields.io/github/forks/r0xd4n3t/nmap-html?color=brightgreen">
</p>

# 📜 Introduction
This script is a Python utility designed to automate the conversion of multiple XML files to HTML files in a given directory. The conversion is performed using an XSLT (Extensible Stylesheet Language Transformations) file, which defines the rules for transforming the XML document into an HTML document. The script uses the lxml library for parsing the XML and XSL files and performing the XSLT transformation. It is a convenient tool for batch-processing XML files in a directory, saving time and effort.

## 🕹️ Usage
To use this script, you need to have Python installed on your system along with the lxml library. You can install the lxml library using the following command:

```
pip install lxml
```

Save the script as nmap_xml_to_html.py (or any preferred name) and navigate to the directory containing the XML files you want to convert.

Next, run the following command in your terminal or command prompt, replacing <xsl_file> with the path to the XSL file that contains the transformation rules:

```
python nmap_xml_to_html.py <xsl_file>
```

The script will automatically find all .xml files in the current directory, convert them to HTML using the specified XSL file, and save the results with a .html extension. The output files will be named according to the input files, replacing the .xml extension with .html. The script will display a message for each file conversion, indicating the source XML file, the XSL file used, and the resulting HTML file.

## 📝 Prerequisites
Before running the script, you should have an understanding of Nmap, its options, and how to generate XML output. Additionally, you should be familiar with XSL and its syntax, as the script uses an XSL transformation to convert the XML to HTML. Finally, you should be comfortable working with Python and the lxml module.

<p align="center"><a href=#top>Back to Top</a></p>
