<?php
//============================================================+
// File name   : example_001.php
// Begin       : 2008-03-04
// Last Update : 2012-07-25
//
// Description : Example 001 for TCPDF class
//               Default Header and Footer
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               Manor Coach House, Church Hill
//               Aldershot, Hants, GU12 4RQ
//               UK
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: Default Header and Footer
 * @author Nicola Asuni
 * @since 2008-03-04
 */
include "../Connections/koneksi.php";

require_once('../tcpdf/config/lang/eng.php');
require_once('../tcpdf/tcpdf.php');


// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('nida');
$pdf->SetTitle('pasien nida');
$pdf->SetSubject('TCPDF Tutorial');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.'', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf->setFooterData($tc=array(0,64,0), $lc=array(0,64,128));

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

//set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

//set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

//set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

//set some language-dependent strings
$pdf->setLanguageArray($l);

// ---------------------------------------------------------

// set default font subsetting mode
$pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.
$pdf->SetFont('dejavusans', '', 12, '', true);

// Add a page
// This method has several options, check the source code documentation for more information.
$pdf->AddPage();


//codingan

include "../Connections/koneksi.php";
// query menampilkan 1 tabel dari logistik
$query1 = "select * from pasien";
$exec1 = mysql_query($query1);



$no = 1;
// Set some content to print
$html = '

<br></br>
<br>Laporan Keseluruhan Data Pasien</br>
<br></br>
<br></br>

<table width="100%" border="1" cellspacing="1" cellpadding="5">
  <tr style="font-size:9px;  background-color:#e9eeff">
    <th width="5%" style="height:30px"  scope="col">No.</th>
    <th width="10%" scope="col">No. RM</th>
    <th width="15%" scope="col">Nama</th>
    <th width="20%" scope="col">Alamat</th>
    <th width="10%" scope="col">Jenis Kelamin</th>
    <th width="5%" scope="col">Usia</th>
    <th width="20%" scope="col">Asal Rujukan</th>
    <th width="15%" scope="col">Riwayat</th>
  </tr>';
  

 while($data=mysql_fetch_array($exec1)){
 
 $html .= '  <tr style="font-size:7px; background-color:#ffffff">
    <th scope="row">  '.$no.' </th>
    <td>'.$data["no_rm"].'</td>
    <td>'.$data["nama_pasien"].'</td>
    <td>'.$data["alamat_pasien"].'</td>
    <td>'.$data["jenis_kelamin"].'</td>
    <td>'.$data["umur"].'</td>
	<td>'.$data["asal_rujukan"].'</td>
    <td>'.$data["riwayat_pasien"].'</td>
  </tr>';
  
  $no++; } 

$html .= '</table>';
 
 
 

// Print text using writeHTMLCell()
$pdf->writeHTMLCell($w=0, $h=0, $x='', $y='', $html, $border=0, $ln=1, $fill=0, $reseth=true, $align='', $autopadding=true);

// ---------------------------------------------------------

// Close and output PDF document
// This method has several options, check the source code documentation for more information.
$pdf->Output('Data-Tools-General.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
?>