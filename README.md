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
This Python script is designed to convert Nmap XML output to HTML format. Nmap is a popular network exploration and security auditing tool. The script takes three arguments: the path to the input XML file, the path to the XSL file that defines the transformation, and the path to the output HTML file. The output is a human-readable report of the scanned targets and their open ports, services, and operating systems. The resulting HTML file can be easily viewed and shared with other security professionals.

## 🕹️ Usage
To use this script, you need to have Python 3 installed on your system and the lxml module. You can install the module by running 

```
pip install lxml
```

in your terminal. Once you have installed the prerequisites, you can run the script with the following command:

```
python nmap_xml_to_html.py <input_xml_file> <xsl_file> <output_html_file>
```

Where <input_xml_file> is the path to the Nmap XML output, <xsl_file> is the path to the XSL file, and <output_html_file> is the path to the output HTML file.

## 📝 Prerequisites
Before running the script, you should have an understanding of Nmap, its options, and how to generate XML output. Additionally, you should be familiar with XSL and its syntax, as the script uses an XSL transformation to convert the XML to HTML. Finally, you should be comfortable working with Python and the lxml module.
