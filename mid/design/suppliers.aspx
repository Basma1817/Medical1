﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suppliers.aspx.cs" Inherits="mid.design.suppliers" %>

<!DOCTYPE html>
<html class="no-js" lang="en-US" data-bt-theme="Medicare 1.4.9">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	

	<!-- Links -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes"><title>MEDICAL COMPANY</title>


	<!-- Style -->
<style>
body.btMenuHorizontal .mainHeader { background: rgba(255,255,255,.85); }
.btContentWrap { padding-top: 0 !important; }

img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>


	<!-- script -->

<script type='text/javascript'>

function ctSetCookie(c_name, value, def_value)

{document.cookie = c_name + '=' + escape(value) + '; path=/';}

ctSetCookie('ct_checkjs', '1343628140', '0');

</script>

<script data-cfasync="false" type="text/javascript">
	var gtm4wp_datalayer_name = "dataLayer";
	var dataLayer = dataLayer || [];

</script>


<link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml" href="feed/index.html" />
<link rel="alternate" type="application/rss+xml" href="comments/feed/index.html" />
<link rel='stylesheet' id='wp-block-library-css'  href='wp-includes/css/dist/block-library/style.min3c21.css?ver=5.1.1' type='text/css' media='all'  data-viewport-units-buggyfill='ignore' />
<link rel='stylesheet' id='bt_dev_style-css'  href='wp-content/plugins/bt_dev/style3c21.css?ver=5.1.1' type='text/css' media='all'  data-viewport-units-buggyfill='ignore' />
<link rel='stylesheet' id='contact-form-7-css'  href='wp-content/plugins/contact-form-7/includes/css/styles3c21.css?ver=5.1.1' type='text/css' media='all'  data-viewport-units-buggyfill='ignore' />
<link rel='stylesheet' id='mptt-style-css'  href='wp-content/plugins/mp-timetable/media/css/style77e6.css?ver=2.2.1' type='text/css' media='all'  data-viewport-units-buggyfill='ignore' />

<style id='woocommerce-inline-inline-css' type='text/css'>
.woocommerce form .form-row .required { visibility: visible; }
</style>


<link rel='stylesheet' id='boldthemes_style_css-css'  href='wp-content/themes/medicare/style3c21.css?ver=5.1.1' type='text/css' media='screen'  data-viewport-units-buggyfill='ignore' />
<link rel='stylesheet'  href='wp-content/themes/medicare/style.css'/>

<style id='boldthemes_style_css-inline-css' type='text/css'>
a:hover{ color: #0176d5;} 
select, input{font-family: Roboto;}
/* body{font-family: Roboto;} */
h1, h2, h3, h4, h5, h6{ font-family: Montserrat;}
a:hover{color: #0176d5;} 
.btLoader{ border-right: 2px solid #0176d5;}
.btBreadCrumbs{ font-family: Roboto Condensed;}
.btPageHeadline header .dash .headline:after{ background: #0176d5;} 
.btAccentColorBackground{background-color: #0176d5 !important;}
.btAleternateColorBackground{background-color: #adc624 !important;} 
.topTools .btIconWidgetIcon:hover .btIco .btIcoHolder em, .btIconWidget .btIconWidgetIcon:hover .btIco .btIcoHolder em{color: #0176d5 !important;}
.menuPort{font-family: Montserrat;}
.menuPort nav ul li a:hover{color: #0176d5 !important;} 
.menuPort nav > ul > li.menu-item-has-children > a:before{ border-bottom: 6px solid #0176d5;} 
.btMenuHorizontal .menuPort nav > ul > li.current-menu-ancestor > a, .btMenuHorizontal .menuPort nav > ul > li.current-menu-item > 
a{-webkit-box-shadow: 0 -3px 0 0 #0176d5 inset; box-shadow: 0 -3px 0 0 #0176d5 inset;} 
.btMenuHorizontal .menuPort nav > ul > li > ul li.current-menu-ancestor > a, .btMenuHorizontal .menuPort nav > ul > li > ul li.current-menu-item > a{color: #0176d5 !important;} .btMenuVertical nav li.current-menu-ancestor > a, .btMenuVertical nav li.current-menu-item > a{color: #0176d5 !important;} .subToggler:before{ color: #0176d5;} 
body.btMenuHorizontal .menuPort ul ul li:first-child > a{border-top: 3px solid #0176d5;} body.btMenuHorizontal .menuPort > nav > ul > li.btMenuWideDropdown > ul > li > a, body.btMenuHorizontal .menuPort > nav > ul > li.btMenuWideDropdown > ul > li:first-child > a{border-top: 3px solid #0176d5;} 
.btVerticalMenuTrigger:hover .btIco:before, .btVerticalMenuTrigger:hover .btIco:after{border-top-color: #0176d5;} 
.btVerticalMenuTrigger:hover .btIco .btIcoHolder:after{border-top-color: #0176d5;} 
@media (min-width: 1200px){.btMenuVerticalOn .btVerticalMenuTrigger .btIco a:before{color: #0176d5 !important;} }
.topBar .widget_search button:hover:before, .topBarInMenu .widget_search button:hover:before{color: #0176d5;} 
.btDarkSkin .topBar .widget_search button:hover:before, .btDarkSkin .topBarInMenu .widget_search button:hover:before, .btLightSkin .btDarkSkin .topBar .widget_search button:hover:before, .btLightSkin .btDarkSkin .topBarInMenu .widget_search button:hover:before{color: #0176d5;} .btLightSkin button:hover:before, .btDarkSkin .btLightSkin button:hover:before{color: #0176d5;}
.topBarInLogoAreaCell{border: 0 solid #0176d5;} 
.topBarInLogoAreaCell .btSpecialHeaderIcon .btIconWidgetIcon .btIco .btIcoHolder:before, .topBarInLogoAreaCell .btSpecialHeaderIcon .btIconWidgetIcon .btIco .btIcoHolder:after{color: #adc624;}
 .topTools.btTopToolsLeft .btIco .btIcoHolder{background-color: #0176d5;} 
 .topTools.btTopToolsLeft .btIco .btIcoHolder:hover{background-color: #adc624;} 
 .topTools.btTopToolsLeft .btSpecialHeaderIcon .btIco .btIcoHolder{background-color: #adc624;} 
 .topTools.btTopToolsLeft .btSpecialHeaderIcon .btIco .btIcoHolder:hover{background-color: #0176d5;} 
 .infoToggler:before{background-color: #0176d5; border: 1px solid #0176d5;} 
 .infoToggler:after{ color: #0176d5; border: 1px solid #0176d5;} 
 .infoToggler.on:after{ background-color: #0176d5;} .infoToggler.on:before{ color: #0176d5;} 
 .btSiteFooter .menu li.btPageTop a:after{ color: #adc624;} 
 .btSiteFooter .menu a:hover{color: #0176d5;} .btCustomMenu ul li a:hover{color: #0176d5;} 
 .btCustomMenu ul li.btPageTop a:after{ color: #adc624;} 
 .btInlineFooterMenu.btCustomMenu ul li > a{ color: #0176d5;} 
 .btFooterWrap.btDarkSkin .btBox h4 .headline a:hover, .btFooterWrap.btLightSkin .btBox h4 
 .headline a:hover{color: #0176d5;} 
 .sticky .headline{color: #0176d5;} 
 .headline a{color: #0176d5;} 
 .single-portfolio h1, .single-post h1, .single-portfolio h2, .single-post h2{ color: #0176d5;} 
 .portfolioItem dt, .btPortfolioSingleItemColumns dt{color: #0176d5;} 
 .btArticleListItem.btBlogColumnView .btArticleListBodyAuthor a, .btPostSingleItemColumns .btArticleListBodyAuthor a{color: #0176d5 !important;} 
 .commentTxt p.edit-link a:hover, .commentTxt p.reply a:hover{color: #0176d5;} 
 .btBox > h4{ font-family: Roboto Condensed;} 
 .btBox > h4:after{ background-color: #0176d5;}
 .btBox ul li a:hover{color: #0176d5;} 
 .btBox.widget_calendar table caption{background: #0176d5; font-family: Montserrat;} 
 .btBox.widget_archive ul li a:hover, .btBox.widget_categories ul li a:hover, .btCustomMenu ul li a:hover{border-bottom: 1px solid #0176d5;} 
 .btDarkSkin .btBox.widget_archive ul li a:hover, .btLightSkin .btDarkSkin .btBox.widget_archive ul li a:hover, .btDarkSkin .btBox.widget_categories ul li a:hover, .btLightSkin .btDarkSkin .btBox.widget_categories ul li a:hover{border-bottom: 1px solid #0176d5;} 
 .btBox.widget_rss li a.rsswidget{font-family: Montserrat;} 
 .btBox.widget_rss li cite:before{ color: #0176d5;} 
 .btBox .btSearch button, .btBox .btSearch input[type=submit], form.woocommerce-product-search button, form.woocommerce-product-search input[type=submit]{ background: #0176d5;} 
 .btBox .btSearch button:hover, form.woocommerce-product-search button:hover{background: #014c89;} 
 form.wpcf7-form input[type="text"], form.wpcf7-form input[type="password"], form.wpcf7-form input[type="email"], form.wpcf7-form input[type="date"], form.wpcf7-form textarea, form.wpcf7-form .fancy-select .trigger{ font-family: Roboto;} 
 form.wpcf7-form input[type="text"]:focus, form.wpcf7-form input[type="password"]:focus, form.wpcf7-form input[type="email"]:focus, form.wpcf7-form input[type="date"]:focus, form.wpcf7-form textarea:focus, form.wpcf7-form .fancy-select .trigger.open{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset;} 
 form.wpcf7-form p span.required:after, form.wpcf7-form p span.bt_bb_required:after{ color: #0176d5 !important;} 
 form.wpcf7-form .wpcf7-submit{ background-color: #0176d5;} 
 form.wpcf7-form .wpcf7-submit:hover{background: #748518;} .fancy-select ul.options > li:hover{color: #0176d5;} 
 .btBox .tagcloud a, .btTags ul a{ background: #0176d5;} .btBox .tagcloud a:hover, .btTags ul a:hover{background: #014c89;} 
 .recentTweets small:before{ color: #0176d5;} 
 .btContentHolder blockquote{ font-family: Roboto;} 
 .btContentHolder table tr th, .btContentHolder table thead tr th{background: #0176d5;} 
 .post-password-form input[type="submit"]{ background: #0176d5; font-family: Montserrat;} 
 .btPagination .paging a:hover:after{background: #0176d5;} 
 .articleSideGutter a{color: #0176d5;} 
 .comment-respond .btnOutline button[type="submit"]{font-family: Montserrat;} 
 a#cancel-comment-reply-link{ font-family: Roboto;} 
 a#cancel-comment-reply-link:hover{color: #0176d5;} 
 span.btHighlight{ background-color: #0176d5;} 
 a.btContinueReading{background: #0176d5;} 
 a.btContinueReading:hover{background: #014c89;} 
 .btIco .btIcoHolder:before, .btIco .btIcoHolder:after{color: #0176d5;} 
 .btDarkSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:before, .btDarkSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:after, .btLightSkin .btDarkSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:before, .btLightSkin .btDarkSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:after{color: #0176d5;} 
 .btLightSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:before, .btLightSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:after, .btDarkSkin .btLightSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:before, .btDarkSkin .btLightSkin .btTopToolsRight .btIconWidget:hover .btIco .btIcoHolder:after{color: #0176d5;} 
 .btIco.btIcoWhiteType .btIcoHolder em{ color: #0176d5;} 
 .btIco.btIcoFilledType.btIcoAccentColor .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAccentColor:hover .btIcoHolder em{-webkit-box-shadow: 0 0 0 1em #0176d5 inset; box-shadow: 0 0 0 1em #0176d5 inset;} 
 .btIco.btIcoFilledType.btIcoAccentColor:hover .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAccentColor .btIcoHolder em{-webkit-box-shadow: 0 0 0 1px #0176d5 inset; box-shadow: 0 0 0 1px #0176d5 inset;} 
 .btIco.btIcoFilledType.btIcoAccentColor:hover .btIcoHolder:before, .btIco.btIcoFilledType.btIcoAccentColor:hover .btIcoHolder:after, .btIco.btIcoOutlineType.btIcoAccentColor .btIcoHolder:before, .btIco.btIcoOutlineType.btIcoAccentColor .btIcoHolder:after{color: #0176d5;} 
 .btIco.btIcoFilledType.btIcoAccentColor.btIcoBigSize:hover .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAccentColor.btIcoBigSize .btIcoHolder em{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset;} 
 .btIco.btIcoFilledType.btIcoAlterColor .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAlterColor:hover .btIcoHolder em{-webkit-box-shadow: 0 0 0 1em #adc624 inset; box-shadow: 0 0 0 1em #adc624 inset;} 
 .btIco.btIcoFilledType.btIcoAlterColor:hover .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAlterColor .btIcoHolder em{-webkit-box-shadow: 0 0 0 1px #adc624 inset; box-shadow: 0 0 0 1px #adc624 inset;} 
 .btIco.btIcoFilledType.btIcoAlterColor:hover .btIcoHolder:before, .btIco.btIcoFilledType.btIcoAlterColor:hover .btIcoHolder:after, .btIco.btIcoOutlineType.btIcoAlterColor .btIcoHolder:before, .btIco.btIcoOutlineType.btIcoAlterColor .btIcoHolder:after{color: #adc624;} 
 .btIco.btIcoFilledType.btIcoAlterColor.btIcoBigSize:hover .btIcoHolder em, .btIco.btIcoOutlineType.btIcoAlterColor.btIcoBigSize .btIcoHolder em{-webkit-box-shadow: 0 0 0 2px #adc624 inset; box-shadow: 0 0 0 2px #adc624 inset;} 
 .btLightSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:before, .btLightSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:after, .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:before, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:after, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btDarkSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:before, .btDarkSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:after, .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:before, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoAccentColor .btIcoHolder:after, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after{color: #0176d5;} .btLightSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:before, .btLightSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:after, .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:before, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:after, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btDarkSkin .btLightSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btDarkSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:before, .btDarkSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:after, .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:before, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoAlterColor .btIcoHolder:after, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btLightSkin .btDarkSkin .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after{color: #adc624;} 
 .btAccentColorBackground .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:before, .btAccentColorBackground .btIco.btIcoDefaultType.btIcoDefaultColor:hover .btIcoHolder:after{color: #adc624 !important;} 
 .btIcoAccentColor span{color: #0176d5;} 
 .btIcoAlterColor span{color: #adc624;} 
 .btIcoDefaultColor:hover span{color: #0176d5;} 
 .btCircleIcon.btAccentColorCircle.btFilledCircle, .btCircleIcon.btAccentColorCircle.btFilledCircle:hover{border-color: #0176d5; background-color: #0176d5;} .btCircleIcon.btAccentColorCircle.btHollowCircle, .btCircleIcon.btAccentColorCircle.btHollowCircle:hover{border-color: #0176d5; color: #0176d5;} .btCircleIcon.btAlternateColorCircle.btFilledCircle, .btCircleIcon.btAlternateColorCircle.btFilledCircle:hover{border-color: #adc624; background-color: #adc624;} .btCircleIcon.btAlternateColorCircle.btHollowCircle, .btCircleIcon.btAlternateColorCircle.btHollowCircle:hover{border-color: #adc624; color: #adc624;} .btnFilledStyle.btnAccentColor, .btnOutlineStyle.btnAccentColor:hover{background-color: #0176d5; border: 2px solid #0176d5;} 
 .btnFilledStyle.btnAlternateColor, .btnOutlineStyle.btnAlternateColor:hover{background-color: #016AC0; border: 2px solid #adc624;} 
 .btnFilledStyle.btnAccentColor:hover{background-color: #014c89; border: 2px solid #014c89;} 
 .btnFilledStyle.btnAlternateColor:hover{background-color: #748518; border: 2px solid #748518;} .btnOutlineStyle.btnAccentColor{ border: 2px solid #0176d5; color: #0176d5;} 
 .btnOutlineStyle.btnAccentColor span, .btnOutlineStyle.btnAccentColor span:before, .btnOutlineStyle.btnAccentColor a, .btnOutlineStyle.btnAccentColor .btIco a:before, .btnOutlineStyle.btnAccentColor button{color: #0176d5 !important;} 
 .btnOutlineStyle.btnAlternateColor{ border: 2px solid #adc624; color: #adc624;} 
 .btnOutlineStyle.btnAlternateColor span, .btnOutlineStyle.btnAlternateColor span:before, .btnOutlineStyle.btnAlternateColor a, .btnOutlineStyle.btnAlternateColor .btIco a:before, .btnOutlineStyle.btnAlternateColor button{color: #adc624 !important;} 
 .btnBorderlessStyle.btnAccentColor span, .btnBorderlessStyle.btnNormalColor:hover span, .btnBorderlessStyle.btnAccentColor span:before, .btnBorderlessStyle.btnNormalColor:hover span:before, .btnBorderlessStyle.btnAccentColor a, .btnBorderlessStyle.btnNormalColor:hover a, .btnBorderlessStyle.btnAccentColor .btIco a:before, .btnBorderlessStyle.btnNormalColor:hover .btIco a:before, .btnBorderlessStyle.btnAccentColor button, .btnBorderlessStyle.btnNormalColor:hover button{color: #0176d5;} .btnBorderlessStyle.btnAlternateColor span, .btnBorderlessStyle.btnAlternateColor span:before, .btnBorderlessStyle.btnAlternateColor a, .btnBorderlessStyle.btnAlternateColor .btIco a:before, .btnBorderlessStyle.btnAlternateColor button{color: #adc624;} 
 .btCounterHolder{font-family: Montserrat;} 
 .btProgressContent .btProgressAnim{background-color: #0176d5;} 
 .btProgressBarLineStyle .btProgressContent .btProgressAnim{ color: #0176d5; border-bottom: 4px solid #0176d5;} 
 .captionTxt:before{color: #0176d5;} 
 .btPriceTable .btPriceTableHeader{background: #0176d5;} 
 .btLightSkin .btDarkSkin .btPriceTableSticker, .btDarkSkin .btLightSkin .btDarkSkin .btPriceTableSticker{background: #adc624;} 
 .btDarkSkin .btDarkSkin .btPriceTableSticker, .btLightSkin .btDarkSkin .btDarkSkin .btPriceTableSticker{ color: #0176d5;} 
 .header .btSuperTitle{font-family: Roboto Condensed;} 
 .btLightSkin .btAlternateDash.btDash .dash:after, .btLightSkin .btAlternateDash.btDash .dash:before, .btDarkSkin .btLightSkin .btAlternateDash.btDash .dash:after, .btDarkSkin .btLightSkin .btAlternateDash.btDash .dash:before, .btDarkSkin .btAlternateDash.btDash .dash:after, .btDarkSkin .btAlternateDash.btDash .dash:before, .btLightSkin .btDarkSkin .btAlternateDash.btDash .dash:after, .btLightSkin .btDarkSkin .btAlternateDash.btDash .dash:before{-webkit-box-shadow: 0 2px 0 0 #adc624 inset; box-shadow: 0 2px 0 0 #adc624 inset;} 
 .btLightSkin .btAccentDash.btDash .dash:after, .btLightSkin .btAccentDash.btDash .dash:before, .btDarkSkin .btLightSkin .btAccentDash.btDash .dash:after, .btDarkSkin .btLightSkin .btAccentDash.btDash .dash:before, .btDarkSkin .btAccentDash.btDash .dash:after, .btDarkSkin .btAccentDash.btDash .dash:before, .btLightSkin .btDarkSkin .btAccentDash.btDash .dash:after, .btLightSkin .btDarkSkin .btAccentDash.btDash .dash:before{-webkit-box-shadow: 0 2px 0 0 #0176d5 inset; box-shadow: 0 2px 0 0 #0176d5 inset;} 
 .header.small .dash:after, .header.small .dash:before{-webkit-box-shadow: 0 1px 0 0 #0176d5 inset; box-shadow: 0 1px 0 0 #0176d5 inset;} .btGridContent .header .btSuperTitle a:hover{color: #0176d5;} 
 .btCatFilter{ font-family: Montserrat;} 
 .btCatFilter .btCatFilterItem:after{ background: #0176d5;} 
 .btCatFilter .btCatFilterItem:hover{color: #0176d5;} 
 .btMediaBox.btQuote, .btMediaBox.btLink{background-color: #0176d5;} 
 h4.nbs.nsPrev a:hover:before, h4.nbs.nsNext a:hover:after{background-color: #0176d5;} 
 .btGhost h4.nbs.nsPrev a:hover:before, .btGhost h4.nbs.nsNext a:hover:after{background-color: #0176d5 !important;} 
 .slided .slick-dots li.slick-active button, .slided .slick-dots li.slick-active button:hover, .btDarkSkin .slided .slick-dots li.slick-active button, .btLightSkin .btDarkSkin .slided .slick-dots li.slick-active button, .btDarkSkin .slided .slick-dots li.slick-active button:hover, .btLightSkin .btDarkSkin .slided .slick-dots li.slick-active button:hover{background-color: #0176d5;} 
 .btGetInfo{ background: #0176d5;} 
 .btCloseGhost .btIco .btIcoHolder:after{color: #0176d5;} 
 .btInfoBarMeta p strong{color: #0176d5;} 
 .btLightSkin .tabsHeader li.on span, .btDarkSkin .btLightSkin .tabsHeader li.on span, .btLightSkin .tabsHeader li.on a, .btDarkSkin .btLightSkin .tabsHeader li.on a{-webkit-box-shadow: 0 -2px 0 0 #0176d5 inset; box-shadow: 0 -2px 0 0 #0176d5 inset;} 
 .btLightSkin .tabsVertical .tabAccordionTitle.on, .btDarkSkin .btLightSkin .tabsVertical .tabAccordionTitle.on, .btDarkSkin .tabsVertical .tabAccordionTitle.on, .btLightSkin .btDarkSkin .tabsVertical .tabAccordionTitle.on{background-color: #0176d5; -webkit-box-shadow: -52px 0 0 #014c89 inset; box-shadow: -52px 0 0 #014c89 inset;} 
 .tabsVertical .tabAccordionTitle:before{color: #0176d5;}
 .tabAccordionTitle.on{background: #0176d5;} 
 .btSingleLatestPostFooter a.btArticleComments{border-left: 1px solid #0176d5;} 
 .demos span{background-color: #0176d5;} 
 .btWorkingHoursInnerLink a{background-color: #adc624;} 
 .btWorkingHoursInnerLink a:hover{background-color: #0176d5;} 
 .btDarkSkin .btGoogleMapsWrap, .btLightSkin .btDarkSkin .btGoogleMapsWrap{background-color: #adc624;} 
 span.btInfoPaneToggler{background-color: #0176d5;} 
 input[type="text"], input[type="password"], input[type="email"], input[type="date"], input[type="tel"], textarea, .fancy-select .trigger, .select2-container .select2-choice{font-family: Roboto;}
input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus, input[type="tel"]:focus, textarea:focus, .fancy-select .trigger.open, .select2-container.select2-dropdown-open .select2-choice{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset;} 
.btSpecTypeDropdown .fancy-select .trigger.open{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset;} 
.wCheckBox:before{background-color: #0176d5;} 
.btCustomList li a:before{ color: #0176d5;} 
.btCustomList li a:hover:before{ background-color: #0176d5;} 
.btLightSkin .btCustomList li a:hover, .btDarkSkin .btLightSkin .btCustomList li a:hover, .btDarkSkin .btCustomList li a:hover, .btLightSkin .btDarkSkin .btCustomList li a:hover{background-color: #0176d5;} 
.btLightSkin .btCustomList li a:hover:before, .btDarkSkin .btLightSkin .btCustomList li a:hover:before, .btDarkSkin .btCustomList li a:hover:before, .btLightSkin .btDarkSkin .btCustomList li a:hover:before{background-color: #014c89;}
 div.wpcf7-validation-errors{border-color: #0176d5; color: #0176d5;} 
.ui-datepicker.ui-widget, .btDatePicker#ui-datepicker-div{font-family: Roboto;} 
.ui-datepicker.ui-widget .ui-datepicker-header{background: #0176d5;} 
.ui-datepicker.ui-widget tbody tr td a.ui-state-default.ui-state-active{-webkit-box-shadow: 0 0 0 20px #adc624 inset; box-shadow: 0 0 0 20px #adc624 inset;} 
.ui-datepicker.ui-widget tbody tr td a.ui-state-default.ui-state-highlight{-webkit-box-shadow: 0 0 0 20px #0176d5 inset; box-shadow: 0 0 0 20px #0176d5 inset;}
.ui-datepicker.ui-widget tbody tr td a.ui-state-default.ui-state-hover{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset; color: #0176d5;} 
.slick-dots li.slick-active button, .slick-dots li.slick-active button:hover{background-color: #0176d5 !important;} 
button.slick-arrow{ background: #0176d5;} button.slick-arrow:hover{background-color: #0176d5;}
.btLightSkin button.slick-arrow:hover, .btDarkSkin .btLightSkin button.slick-arrow:hover, .btDarkSkin button.slick-arrow:hover, .btLightSkin .btDarkSkin button.slick-arrow:hover{background-color: #0176d5;} .bt_bb_arrows_size_large button.slick-arrow:after{ -webkit-box-shadow: 0 0 0 1px #0176d5 inset; box-shadow: 0 0 0 1px #0176d5 inset;} .bt_bb_arrows_size_large button.slick-arrow:hover:after{-webkit-box-shadow: 0 0 0 1em #0176d5 inset; box-shadow: 0 0 0 1em #0176d5 inset;} .bt_bb_color_scheme_2 .bt_bb_arrows_size_large button.slick-arrow:hover:before, .bt_bb_color_scheme_5 .bt_bb_arrows_size_large button.slick-arrow:hover:before{color: #0176d5;} 
.wpcf7-form input:not([type='checkbox']):not([type='radio']).wpcf7-submit{ font-family: Roboto; background: #0176d5;} 
.wpcf7-form input:not([type='checkbox']):not([type='radio']).wpcf7-submit:hover{background: #014c89 !important;} .wpcf7-form .btAlterSubmit input:not([type='checkbox']):not([type='radio']).wpcf7-submit{background: #adc624;} .wpcf7-form .btAlterSubmit input:not([type='checkbox']):not([type='radio']).wpcf7-submit:hover{background: #748518 !important;} 
div.wpcf7 .btSubscribe input[type='submit']{ background: #0176d5 !important;} div.wpcf7 .btFooterSubscribe input[type='submit']{ background: #adc624 !important;} div.wpcf7 .btFooterSubscribe input[type='submit']:hover{background: #748518;} .bt_bb_progress_bar_advanced > p{ font-family: Montserrat;} .btLightSkin .bt_bb_features_table table thead tr th, .btDarkSkin .btLightSkin .bt_bb_features_table table thead tr th{border-bottom-color: #0176d5;} .btDarkSkin .bt_bb_features_table table thead tr th, .btLightSkin .btDarkSkin .bt_bb_features_table table thead tr th{border-bottom-color: #0176d5;} .bt_bb_features_table table tbody tr td .bt_bb_features_table_yes:after{ color: #0176d5;} .bt_bb_masonry_image_grid .bt_bb_grid_item .bt_bb_grid_item_inner_image:after{ color: #0176d5;} .bt_bb_post_grid_loader{ border-right: 2px solid #0176d5;} .bt_bb_post_grid_filter{ font-family: Montserrat;} .bt_bb_post_grid_filter .bt_bb_post_grid_filter_item:after{ background: #0176d5;} .bt_bb_post_grid_filter .bt_bb_post_grid_filter_item:hover{color: #0176d5;} .bt_bb_masonry_portfolio_grid .bt_bb_masonry_post_grid_content .bt_bb_grid_item .bt_bb_grid_item_post_content .bt_bb_grid_item_category{font-family: Roboto Condensed;} .bt_bb_masonry_portfolio_grid .bt_bb_masonry_post_grid_content .bt_bb_grid_item .bt_bb_grid_item_post_content .bt_bb_grid_item_post_title a{color: #0176d5;} .bt_bb_masonry_portfolio_grid .bt_bb_masonry_post_grid_content .bt_bb_grid_item .bt_bb_grid_item_post_content .bt_bb_grid_item_post_title:before{ background: #adc624;} .bt_bb_masonry_portfolio_grid .bt_bb_masonry_post_grid_content .bt_bb_grid_item .bt_bb_grid_item_post_content .bt_bb_grid_item_meta{ font-family: Roboto;} .bt_bb_masonry_portfolio_grid .bt_bb_masonry_post_grid_content .bt_bb_grid_item .bt_bb_grid_item_post_content .bt_bb_grid_item_post_share .btIco:hover .btIcoHolder:after{color: #0176d5;} .bt_bb_masonry_portfolio_tiles .bt_bb_grid_item .bt_bb_grid_item_inner .bt_bb_grid_item_inner_content .bt_bb_grid_item_post_title:before{ color: #0176d5;} .bt_bb_masonry_portfolio_tiles .bt_bb_grid_item .bt_bb_grid_item_inner .bt_bb_grid_item_inner_content .bt_bb_grid_item_post_title + .bt_bb_grid_item_post_excerpt:before{ background: #adc624;} .bt_bb_twitter .bt_bb_twitter_item a{color: #0176d5;} .bt_bb_slider .slick-dots li.slick-active button, .bt_bb_slider .slick-dots li.slick-active button:hover, .btDarkSkin .bt_bb_slider .slick-dots li.slick-active button, .btLightSkin .btDarkSkin .bt_bb_slider .slick-dots li.slick-active button, .btDarkSkin .bt_bb_slider .slick-dots li.slick-active button:hover, .btLightSkin .btDarkSkin .bt_bb_slider .slick-dots li.slick-active button:hover{background-color: #0176d5;} .mfp-gallery button.mfp-close{ color: #0176d5;} .mfp-gallery button.mfp-arrow:hover{background: #0176d5;} .btSidebar .btIconWidget .btIconWidgetContent .btIconWidgetTitle{font-family: Montserrat;} .btSidebar .btIconWidget.btSpecialHeaderIcon .btIconWidgetIcon .btIco .btIcoHolder:before, .btSidebar .btIconWidget.btSpecialHeaderIcon .btIconWidgetIcon .btIco .btIcoHolder:after{color: #0176d5;} .bt_bb_before_after_image .bt_bb_before_after_image-horizontal .bt_bb_before_after_image-handle:hover{background: #0176d5;} .bt_bb_before_after_image .bt_bb_before_after_image-container.active .bt_bb_before_after_image-handle{background: #0176d5;} .bt_bb_before_after_image .bt_bb_before_after_image_block{ background: #0176d5;} .bt_bb_before_after_image .bt_bb_before_after_image_block .bt_bb_before_after_image_headline{font-family: Montserrat;} .bt_bb_before_after_image .bt_bb_before_after_image_block .bt_bb_before_after_image_headline:after{background: #adc624;} .mptt-shortcode-wrapper .mptt-shortcode-table tbody .mptt-event-container{background-color: #0176d5;} .mptt-shortcode-wrapper .mptt-shortcode-table tbody .mptt-event-container:hover{background-color: #adc624;} .btNewsletter .btNewsletterColumn input:focus{-webkit-box-shadow: 0 0 0 3px #0176d5 !important; box-shadow: 0 0 0 3px #0176d5 !important;} .btNewsletter .btNewsletterButton input{background: #adc624 !important;} .btNewsletter .btNewsletterButton input:hover{background: #748518 !important; -webkit-box-shadow: 0 0 0 3em #748518 inset; box-shadow: 0 0 0 3em #748518 inset;} .btAnimNav li.btAnimNavNext:hover, .btAnimNav li.btAnimNavPrev:hover{color: #0176d5;} .headline strong.animate{ color: #adc624;} .headline b.animate{ color: #3fa9ff;} p.demo_store{ background-color: #0176d5;} .woocommerce .woocommerce-error, .woocommerce .woocommerce-info, .woocommerce .woocommerce-message{ border-top: 2px solid #0176d5;} .woocommerce .woocommerce-info a:not(.button), .woocommerce .woocommerce-message a:not(.button){color: #0176d5;} .woocommerce .woocommerce-message{border-top-color: #0176d5;} .woocommerce .woocommerce-message:before{color: #0176d5;} .woocommerce .woocommerce-info{border-top-color: #0176d5;} .woocommerce .woocommerce-info:before{color: #0176d5;} .woocommerce div.product .stock{color: #0176d5;} nav.woocommerce-pagination ul li a:focus, nav.woocommerce-pagination ul li a:hover{background: #adc624;} nav.woocommerce-pagination ul li a.next, nav.woocommerce-pagination ul li a.prev{background: #0176d5;} nav.woocommerce-pagination ul li a.next:hover, nav.woocommerce-pagination ul li a.prev:hover{ background: #adc624;} .woocommerce #respond input#submit, .woocommerce button.button.single_add_to_cart_button, .woocommerce .button.single_add_to_cart_button, .woocommerce input.button, .woocommerce button.button, .woocommerce .widget_price_filter .price_slider_amount .button, .woocommerce p.buttons a.button, .woocommerce .woocommerce-message a.button, button[name="calc_shipping"]{ color: #0176d5; border: 2px solid #0176d5;} .woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover, .woocommerce p.buttons a.button:hover, .widget_price_filter .price_slider_amount .button:hover{background-color: #0176d5;} .woocommerce .woocommerce-message a.button, .woocommerce a.button.wc-forward, .woocommerce #review_form .form-submit input[type="submit"]#submit, .woocommerce .shop_table.cart td.actions input[type="submit"], .woocommerce .shop_table.cart td.actions button[type="submit"], .woocommerce .login input[type="submit"], .woocommerce input.button[name="register"], .woocommerce input.button[name="save_address"], .woocommerce p.buttons a.button{background-color: #0176d5;} .woocommerce .woocommerce-message a.button:hover, .woocommerce a.button.wc-forward:hover, .woocommerce #review_form .form-submit input[type="submit"]#submit:hover, .woocommerce .shop_table.cart td.actions input[type="submit"]:hover, .woocommerce .shop_table.cart td.actions button[type="submit"]:hover, .woocommerce .login input[type="submit"]:hover, .woocommerce input.button[name="register"]:hover, .woocommerce input.button[name="save_address"]:hover, .woocommerce p.buttons a.button:hover, button[name="calc_shipping"]:hover{background-color: #014c89; border-color: #014c89;} .woocommerce #respond input#submit.alt, .woocommerce a.button.alt, .woocommerce button.button.alt, .woocommerce input.button.alt{background-color: #0176d5;} .woocommerce #respond input#submit.alt:hover, .woocommerce a.button.alt:hover, .woocommerce button.button.alt:hover, .woocommerce input.button.alt:hover{ color: #0176d5 !important;} .woocommerce #respond input#submit.alt.disabled, .woocommerce #respond input#submit.alt.disabled:hover, .woocommerce #respond input#submit.alt:disabled, .woocommerce #respond input#submit.alt:disabled:hover, .woocommerce #respond input#submit.alt:disabled[disabled], .woocommerce #respond input#submit.alt:disabled[disabled]:hover, .woocommerce a.button.alt.disabled, .woocommerce a.button.alt.disabled:hover, .woocommerce a.button.alt:disabled, .woocommerce a.button.alt:disabled:hover, .woocommerce a.button.alt:disabled[disabled], .woocommerce a.button.alt:disabled[disabled]:hover, .woocommerce button.button.alt.disabled, .woocommerce button.button.alt.disabled:hover, .woocommerce button.button.alt:disabled, .woocommerce button.button.alt:disabled:hover, .woocommerce button.button.alt:disabled[disabled], .woocommerce button.button.alt:disabled[disabled]:hover, .woocommerce input.button.alt.disabled, .woocommerce input.button.alt.disabled:hover, .woocommerce input.button.alt:disabled, .woocommerce input.button.alt:disabled:hover, .woocommerce input.button.alt:disabled[disabled], .woocommerce input.button.alt:disabled[disabled]:hover{background-color: #0176d5;} .woocommerce .star-rating span:before{ color: #0176d5;} .woocommerce p.stars a[class^="star-"].active:after, .woocommerce p.stars a[class^="star-"]:hover:after{color: #0176d5;} .btLightSkin.woocommerce ul.cart_list li .headline a:hover, .btDarkSkin .btLightSkin.woocommerce ul.cart_list li .headline a:hover, .btLightSkin.woocommerce ul.product_list_widget li .headline a:hover, .btDarkSkin .btLightSkin.woocommerce ul.product_list_widget li .headline a:hover, .btDarkSkin.woocommerce ul.cart_list li .headline a:hover, .btLightSkin .btDarkSkin.woocommerce ul.cart_list li .headline a:hover, .btDarkSkin.woocommerce ul.product_list_widget li .headline a:hover, .btLightSkin .btDarkSkin.woocommerce ul.product_list_widget li .headline a:hover{color: #0176d5;} .btFooterWrap.btDarkSkin ul.cart_list li .headline a:hover, .btFooterWrap.btLightSkin ul.cart_list li .headline a:hover, .btFooterWrap.btDarkSkin ul.product_list_widget li .headline a:hover, .btFooterWrap.btLightSkin ul.product_list_widget li .headline a:hover{color: #0176d5 !important;} .woocommerce .widget_shopping_cart .total, .woocommerce.widget_shopping_cart .total{border-top: 2px solid #0176d5;} .woocommerce .widget_shopping_cart .cart_list li a.remove:hover, .woocommerce.widget_shopping_cart .cart_list li a.remove:hover{background-color: #0176d5;} .woocommerce .widget_price_filter .ui-slider .ui-slider-handle{ background-color: #0176d5;} .woocommerce-cart .cart-collaterals .cart_totals .discount td{color: #0176d5;} .woocommerce .product_meta .posted_in:before{ color: #0176d5;} .woocommerce .product_meta .posted_in a{color: #0176d5;} .woocommerce form.woocommerce-product-search input[type="submit"]{ background-color: #0176d5;} td.product-remove a.remove{ color: #0176d5; border: 1px solid #0176d5;} td.product-remove a.remove:hover{background-color: #0176d5;} .woocommerce .wc-proceed-to-checkout a.button{ border: 2px solid #0176d5;} .woocommerce p.lost_password:before{ color: #0176d5;} .woocommerce form.login p.lost_password a:hover{color: #0176d5;} .woocommerce header.title .edit{ color: #0176d5;} .woocommerce .widget_layered_nav ul li.chosen a:hover:before, .woocommerce .widget_layered_nav_filters ul li a:hover:before{background-color: #0176d5;} a.reset_variations:hover{color: #0176d5;} .btLightSkin.woocommerce .product .headline a:hover, .btDarkSkin .btLightSkin.woocommerce .product .headline a:hover, .btDarkSkin.woocommerce .product .headline a:hover, .btLightSkin .btDarkSkin.woocommerce .product .headline a:hover{color: #0176d5;} .woocommerce a.button.wc-backward{ background-color: #0176d5;} .woocommerce a.button.wc-backward:hover{background-color: #014c89;} .woocommerce-MyAccount-navigation ul{ font-family: "Montserrat";} .woocommerce-MyAccount-navigation ul li a:after{ background: #0176d5;} .woocommerce-MyAccount-navigation ul li a:hover{color: #0176d5;} form fieldset legend{ font-family: Montserrat;} .btQuoteBooking .btContactNext{ background-color: #0176d5; border: 2px solid #0176d5;} .btQuoteBooking .btContactNext:hover, .btQuoteBooking .btContactNext:active{background-color: #014c89; border: 2px solid #014c89;} .btQuoteBooking .btQuoteSwitch:hover{-webkit-box-shadow: 0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2); box-shadow: 0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2);} .btQuoteBooking .btQuoteSwitch.on .btQuoteSwitchInner{ background: #0176d5;} .btQuoteBooking input[type="text"], .btQuoteBooking input[type="email"], .btQuoteBooking input[type="password"], .btQuoteBooking textarea, .btQuoteBooking .fancy-select .trigger, .btQuoteBooking .dd.ddcommon .ddTitleText{ font-family: Roboto;} .btQuoteBooking input[type="text"]:focus, .btQuoteBooking input[type="email"]:focus, .btQuoteBooking input[type="password"]:focus, .btQuoteBooking textarea:focus, .btQuoteBooking .fancy-select .trigger.open, .btQuoteBooking .dd.ddcommon.borderRadiusTp .ddTitleText{-webkit-box-shadow: 0 0 0 2px #0176d5 inset; box-shadow: 0 0 0 2px #0176d5 inset;} .btQuoteBooking .btQuoteItem textarea{ font-family: Roboto;} .btQuoteBooking .ui-slider .ui-slider-handle{ background: #0176d5;} .btQuoteBooking .btQuoteBookingForm .btQuoteTotal{ background: #0176d5;} .btQuoteBooking .btQuoteTotalCurrency{ background: #014c89;} .btQuoteBooking .btQuoteTotalCalc{ background: #014c89;} .btQuoteBooking .btContactFieldMandatory:after{ color: #0176d5;} .btQuoteBooking .btContactFieldMandatory.btContactFieldError input, .btQuoteBooking .btContactFieldMandatory.btContactFieldError textarea{border: 1px solid #0176d5; -webkit-box-shadow: 0 0 0 1px #0176d5 inset; box-shadow: 0 0 0 1px #0176d5 inset;} .btQuoteBooking .btContactFieldMandatory.btContactFieldError .dd.ddcommon.borderRadius .ddTitleText{border: 1px solid #0176d5; -webkit-box-shadow: 0 0 0 1px #0176d5 inset; box-shadow: 0 0 0 1px #0176d5 inset;} .btQuoteBooking .btContactFieldMandatory.btContactFieldError .dd.ddcommon.borderRadius:hover .ddTitleText{-webkit-box-shadow: 0 0 0 1px #0176d5 inset,0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2); box-shadow: 0 0 0 1px #0176d5 inset,0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2);} .btQuoteBooking .btContactFieldMandatory.btContactFieldError input:focus, .btQuoteBooking .btContactFieldMandatory.btContactFieldError textarea:focus{-webkit-box-shadow: 0 0 0 1px #0176d5 inset,5px 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2); box-shadow: 0 0 0 1px #0176d5 inset,5px 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2);} .btQuoteBooking .btContactFieldMandatory.btContactFieldError .dd.ddcommon.borderRadiusTp .ddTitleText{-webkit-box-shadow: 0 0 0 1px #0176d5 inset,5px 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2); box-shadow: 0 0 0 1px #0176d5 inset,5px 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2);} .btQuoteBooking .btSubmitMessage{color: #0176d5;} .btDatePicker .ui-datepicker-header{ background-color: #0176d5;} .btQuoteBooking .btContactSubmit{ background-color: #0176d5; border: 2px solid #0176d5;} .btQuoteBooking .btContactSubmit:hover{background-color: #014c89; border: 2px solid #014c89;} .btPayPalButton:hover{-webkit-box-shadow: 0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2); box-shadow: 0 0 0 #0176d5 inset,0 1px 5px rgba(0,0,0,.2);} @media (max-width: 992px){.header.small .dash:after, .header.small .dash:before{-webkit-box-shadow: 0 1px 0 0 #0176d5 inset; box-shadow: 0 1px 0 0 #0176d5 inset;} }@media (max-width: 767px){.btArticleListItem .btArticleFooter .btShareArticle:before{ background-color: #0176d5;} }.wp-block-button__link:hover{color: #0176d5 !important;}


</style>


<link rel='stylesheet' id='boldthemes_style_print_css-css'  href='wp-content/themes/medicare/print3c21.css?ver=5.1.1' type='text/css' media='print'  data-viewport-units-buggyfill='ignore' >

<link rel='stylesheet' id='boldthemes_magnific-popup_css-css'  href='wp-content/themes/medicare/magnific-popup3c21.css?ver=5.1.1' type='text/css' media='screen'  data-viewport-units-buggyfill='ignore' />

		<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Cairo&display=swap" rel="stylesheet">



<link rel='stylesheet' id='jquery-ui-smoothness-css'  href='wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.mine899.css?ver=1.11.4' type='text/css' media='screen'  data-viewport-units-buggyfill='ignore' />


<script type='text/javascript' src='wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4'> </script>
<script type='text/javascript' src='wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'>
var ctPublic = {"_ajax_nonce":"1491390c94","_ajax_url":"http:\/\/medicare.bold-themes.com\/general-hospital\/wp-admin\/admin-ajax.php"};
</script>
<script type='text/javascript' src='wp-content/plugins/cleantalk-spam-protect/js/apbct-publica6e8.js?ver=5.118.1'></script>
<script type='text/javascript'>
var ctNocache = {"ajaxurl":"http:\/\/medicare.bold-themes.com\/general-hospital\/wp-admin\/admin-ajax.php","info_flag":"","set_cookies_flag":"","blog_home":"http:\/\/medicare.bold-themes.com\/general-hospital\/"};
</script>
<script type='text/javascript' src='wp-content/plugins/cleantalk-spam-protect/inc/cleantalk_nocachea6e8.js?ver=5.118.1'></script>
<script type='text/javascript' src='wp-content/plugins/bold-page-builder/script_fe68b3.js?ver=1'></script>
<script type='text/javascript' src='wp-content/plugins/bt_cost_calculator/jquery.dd3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/bt_cost_calculator/cc.main3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/medicare/bt_elements3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/duracelltomi-google-tag-manager/js/gtm4wp-form-move-tracker2c00.js?ver=1.9.2'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/viewport-units-buggyfill3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/slick.min3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/jquery.magnific-popup.min3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/iscroll3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/fancySelect3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/modernizr.custom3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/viewport-units-buggyfill.hacks3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/misc3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/header.misc3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/dir.hover3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/themes/medicare/js/sliders3c21.js?ver=5.1.1'></script>
<link rel='https://api.w.org/' href='wp-json/index.html' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="xmlrpc0db0.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.1.1" />
<meta name="generator" content="WooCommerce 3.5.7" />
<link rel="canonical" href="index.html" />
<link rel='shortlink' href='index.html' />
<link rel="alternate" type="application/json+oembed" href="wp-json/oembed/1.0/embed9cb2.json?url=http%3A%2F%2Fmedicare.bold-themes.com%2Fgeneral-hospital%2F" />
<link rel="alternate" type="text/xml+oembed" href="wp-json/oembed/1.0/embed2f0a?url=http%3A%2F%2Fmedicare.bold-themes.com%2Fgeneral-hospital%2F&amp;format=xml" />
<noscript>
	
	
<style type="text/css">.mptt-shortcode-wrapper .mptt-shortcode-table:first-of-type{display:table!important}
.mptt-shortcode-wrapper .mptt-shortcode-table .mptt-event-container:hover{height:auto!important;min-height:100%!important}
body.mprm_ie_browser .mptt-shortcode-wrapper .mptt-event-container{height:auto!important}@media (max-width:767px){.mptt-shortcode-wrapper .mptt-shortcode-table:first-of-type{display:none!important}}
</style>

<

</noscript>
<script data-cfasync="false" type="text/javascript">
	dataLayer.push({"pagePostType":"frontpage","pagePostType2":"single-page","pagePostAuthor":"admin"});//]]>
</script>
<script data-cfasync="false">
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.'+'js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-WTG4KM9');//]]>
</script>
<script>window.BoldThemesURI = "http://medicare.bold-themes.com/wp-content/themes/medicare/"; window.BoldThemesAJAXURL = "wp-admin/admin-ajax.html";window.boldthemes_text = [];window.boldthemes_text.previous = 'previous';window.boldthemes_text.next = 'next';</script><style>h1, h2, h3 {letter-spacing: -.05em;} .header .headline em {letter-spacing: inherit;} header .btSuperTitle {letter-spacing: 0 !important;} .btBtn {letter-spacing: 0;} .header.large h2, .header.large h1 {letter-spacing: -.05em;}</style>	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	<link rel="icon" href="wp-content/uploads/sites/14/2018/03/general-hospital-favicon.png" sizes="32x32" />
<link rel="icon" href="wp-content/uploads/sites/14/2018/03/general-hospital-favicon.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="wp-content/uploads/sites/14/2018/03/general-hospital-favicon.png" />
<meta name="msapplication-TileImage" content="http://medicare.bold-themes.com/general-hospital/wp-content/uploads/sites/14/2018/03/general-hospital-favicon.png" />
	
</head>

<body class="home page-template-default page page-id-983 bodyPreloader btMenuRightEnabled btStickyEnabled btLightSkin btMenuGutter btCapitalizeMainMenuItems btHardRoundedButtons btNoSidebar bt_bb_plugin_active bt_bb_fe_preview_toggle woocommerce-no-js ">
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WTG4KM9"
height="0" width="0" style="display:none;visibility:hidden">

</iframe></noscript>


<div class="btPageWrap" id="top">

<header class="mainHeader btClear">
<div class="topBar btClear">
				<div class="topBarPort btClear">
				<div class="topBarInLogoArea">
					<span class="infoToggler"></span>
					<div class="topBarInLogoAreaCell">
						<span class="btIconWidget "><span class="btIconWidgetIcon"><span class="btIco " ><span  data-ico-s7="&#xe66b;" class="btIcoHolder"><em></em></span></span></span><span class="btIconWidgetContent"><span class="btIconWidgetTitle">Monday - Friday 08:00-19:00</span><span class="btIconWidgetText">Saturday and Sunday - CLOSED</span></span></span><span class="btIconWidget "><span class="btIconWidgetIcon"><span class="btIco " ><span  data-ico-s7="&#xe627;" class="btIcoHolder"><em></em></span></span></span><span class="btIconWidgetContent"><span class="btIconWidgetTitle">+0800 2336 7811</span><span class="btIconWidgetText">Office@Medicare.com</span></span></span><span class="btIconWidget "><span class="btIconWidgetIcon"><span class="btIco " ><span  data-ico-s7="&#xe638;" class="btIcoHolder"><em></em></span></span></span><span class="btIconWidgetContent"><span class="btIconWidgetTitle">27th Avenue </span><span class="btIconWidgetText">New York, W2 3XE</span></span></span>					</div><!-- /topBarInLogoAreaCell -->
				</div>
				<div class="topTools btTopToolsRight btTextRight">
                    <div class="logo">
<span>
<a href="index.html">
	
	<img class="btMainLogo" style="width: 170px; margin-right: 310px; margin-top: 6px;" 
        data-hw="3.7818181818182" src="wp-content/uploads/sites/14/2018/03/general-hospital-logo-color.png" alt="General Hospital">
	<img class="btAltLogo" style="width:150px" src="wp-content/uploads/sites/14/2018/03/general-hospital-logo-white.png" alt="General Hospital">

</a></span>
</div>
				</div>
				</div>
				</div>



<div class="port">
<div class="menuHolder btClear">
<span class="btVerticalMenuTrigger">&nbsp;<span class="btIco btIcoSmallSize btIcoDefaultColor btIcoDefaultType" ><a href="#"  data-ico-fa="&#xf0c9;" class="btIcoHolder"><em></em></a></span></span>
<span class="btHorizontalMenuTrigger">&nbsp;<span class="btIco btIcoSmallSize btIcoDefaultColor btIcoDefaultType" ><a href="#"  data-ico-fa="&#xf0c9;" class="btIcoHolder"><em></em></a></span></span>


		<!-- nav -->

<div class="menuPort">
	<nav style="direction: rtl">

		<ul id="menu-main-menu" class="menu"style="display: flex;
    font-weight: 500;
    font-size: 16px;">
			<li id="menu-item-1395" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1395"><a href="../Dashboard.aspx"><asp:Image ID="Image1" Width="120px" ImageUrl="~/images/infosas.png" runat="server" /></a></li>
		<li id="menu-item-1395" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1395"><a  style="font-weight:500" href="../Default.aspx">الرئيسية</a></li>
		<li id="menu-item-1624" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1624"><a style="font-weight:500"  href="products.aspx">منتجاتنا</a></li>
		<li id="menu-item-1624" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1624"><a  style="font-weight:500" href="customer.aspx">العملاء</a></li>
		<li id="menu-item-1624" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1624"><a  style="font-weight:500" href="suppliers.aspx">الموردين</a></li>
		<li id="menu-item-1624" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1624"><a  style="font-weight:500" href="orders.aspx">الطلبات</a></li>
		<li id="menu-item-1624" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1624"><a  style="font-weight:500" href="jobs.aspx"> طلبات الوظائف</a></li>

		<li id="menu-item-1409" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1409"><a  style="font-weight:500" href="news.aspx">الاخبار </a></li>
		<li id="menu-item-1395" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1395">
		<a  style="font-weight:500" href="contact.aspx">أتصل بنا</a></li>
		<li id="menu-item-1395" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1395"><a  style="font-weight:500" href="partners.aspx">الشركاء</a></li>
		<li id="menu-item-1395" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1395"><a  style="font-weight:500" href="login.aspx">تسجيل الدخول</a></li>
		
		</ul>	
		
		</nav>
</div>
<!-- End nav -->

</div>
</div>

</header>

<div class="btContentWrap btClear">
<div class="btContentHolder">
<div class="btContent">	
<div class="bt_bb_wrapper">

<!--  Content Place holder -->

<div class="btContentWrap btClear">
	<div class="btContentHolder">
<div class="btContent">	
<section class="errorPage boldSection topExtraSpaced bottomExtraSpaced gutter wBackground" style = "background-image: url(http://medicare.bold-themes.com/general-hospital/wp-content/themes/medicare/gfx/plug.png); background-position: 30% 40px;">
<div class="port">
<div class="boldCell">
<div class="boldRow ">
	<div class="rowItem col-ms-12 btTextCenter">
		<div class="rowItemContent">
			<header class="header btClear extralarge btDash bottomDash" ><div class="btSuperTitle">We are sorry, page not found.</div><div class="dash"><h1><span class="headline">Error 404.</span></h1></div><div class="btSubTitle"><a href='http://medicare.bold-themes.com/general-hospital'>Back to homepage</a></div></header>							</div>
	</div>
</div>
</div>
</div>
</section>

</div>





<div class="bt_bb_wrapper">
	
	<section id="bt_section5d807fd49b661"  class="boldSection topSemiSpaced bottomSemiSpaced btDarkSkin gutter inherit" style="background-color:#0176d5;"><div class="port"><div class="boldCell"><div class="boldCellInner"><div class="boldRow  bt_bb_hidden_xs bt_bb_hidden_ms bt_bb_hidden_sm" ><div class="boldRowInner"><div class="rowItem col-md-8 col-ms-12 btTextLeft"  ><div class="rowItemContent" ><div class="btIconImageRow" ><div class="bpgPhoto btTextCenter" ><div class = "btImage">
		
		<img src="wp-content/uploads/sites/14/2018/03/general-hospital-logo-footer.png" alt="" >
	
	
	</div></div></div><div class="btClear btSeparator bottomSemiSpaced noBorder bt_bb_hidden_md bt_bb_hidden_lg" ><hr></div></div></div><div class="rowItem col-md-4 col-ms-12 btTextCenter btMiddleVertical btNoPadding"  ><div class="rowItemContent" ><div class="btText" ><p>Visit us on social networks:</p>
</div><div class="btIconImageRow" ><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.facebook.com/"  target = "no_target" data-ico-fa="&#xf09a;" class="btIcoHolder"><em></em></a></span><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.twitter.com/"  target = "no_target" data-ico-fa="&#xf099;" class="btIcoHolder"><em></em></a></span><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.linkedin.com/"  target = "no_target" data-ico-fa="&#xf0e1;" class="btIcoHolder"><em></em></a></span></div></div></div></div></div><div class="boldRow  bt_bb_hidden_md bt_bb_hidden_lg" ><div class="boldRowInner"><div class="rowItem col-md-12 col-ms-12  btTextCenter inherit"  ><div class="rowItemContent" ><div class="btIconImageRow" ><div class="bpgPhoto btTextCenter" ><div class = "btImage"><img src="wp-content/uploads/sites/14/2018/03/general-hospital-logo-footer.png" alt="" ></div></div></div><div class="btClear btSeparator bottomSemiSpaced noBorder bt_bb_hidden_md bt_bb_hidden_lg" ><hr></div><div class="btText" ><p>Visit us on social networks:</p>
</div><div class="btIconImageRow" ><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.facebook.com/"  target = "no_target" data-ico-fa="&#xf09a;" class="btIcoHolder"><em></em></a></span><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.twitter.com/"  target = "no_target" data-ico-fa="&#xf099;" class="btIcoHolder"><em></em></a></span><span class="btIco btIcoFilledType btIcoSmallSize btIcoDefaultColor   " ><a href="http://www.linkedin.com/"  target = "no_target" data-ico-fa="&#xf0e1;" class="btIcoHolder"><em></em></a></span></div></div></div></div></div><div class="boldRow  " ><div class="boldRowInner"><div class="rowItem col-md-12 col-ms-12  btTextLeft"  ><div class="rowItemContent" ><div class="btClear btSeparator topSmallSpaced bottomSmallSpaced border" ><hr></div></div></div></div></div>

<div class="btClear btSeparator bottomSmallSpaced noBorder" ><hr></div></div></div><div class="rowItem col-md-4 col-ms-12 btTextCenter inherit btNoPadding"  ><div class="rowItemContent" ><header class="header btClear large  btNormalDash" ><div class="dash"><h2><span class="headline"><strong class="animate">0-800-777-2331</strong></span></h2></div></header><div class="btClear btSeparator bottomExtraSmallSpaced noBorder" ><hr></div><div class="btText" ><p>Contact us now If you need equipment, medicines, we will reply quickly and give you medical aid.</p>
</div><div class="btClear btSeparator topSmallSpaced noBorder bt_bb_hidden_md bt_bb_hidden_lg" ><hr></div></div></div></div></div></div></div></div></section>



</div><div class="btFooterWrap">	
	
	
	


</div>

</div><!-- /pageWrap -->

<script type="text/javascript">
var c = document.body.className;
c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
document.body.className = c;
</script>
<script type='text/javascript' src='wp-includes/js/comment-reply.min3c21.js?ver=5.1.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/medicare.bold-themes.com\/general-hospital\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"jqueryUi":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='wp-content/plugins/contact-form-7/includes/js/scripts3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/general-hospital\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/general-hospital\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/medicare.bold-themes.com\/general-hospital\/shop\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.minf8ee.js?ver=3.5.7'></script>
<script type='text/javascript' src='wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/general-hospital\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/general-hospital\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.minf8ee.js?ver=3.5.7'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/general-hospital\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/general-hospital\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_4e05b12e11ce4ca2fa91cf9d99f3a53b","fragment_name":"wc_fragments_4e05b12e11ce4ca2fa91cf9d99f3a53b"};
/* ]]> */
</script>
<script type='text/javascript' src='wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.minf8ee.js?ver=3.5.7'></script>
<script type='text/javascript' src='wp-includes/js/jquery/ui/core.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='wp-includes/js/jquery/ui/datepicker.mine899.js?ver=1.11.4'></script>
<script type='text/javascript'>
jQuery(document).ready(function(jQuery){jQuery.datepicker.setDefaults({"closeText":"Close","currentText":"Today","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"nextText":"Next","prevText":"Previous","dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"dateFormat":"MM d, yy","firstDay":1,"isRTL":false});});
</script>
<script type='text/javascript' src='wp-includes/js/jquery/ui/widget.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='wp-includes/js/jquery/ui/button.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='wp-includes/js/jquery/ui/spinner.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='wp-includes/js/wp-embed.min3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/medicare/bt_parallax3c21.js?ver=5.1.1'></script>
<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBda9LxQ-Wztqsk6aFI7SkcdiypnKTPfiI&amp;ver=5.1.1'></script>
<script type='text/javascript' src='wp-content/plugins/medicare/bt_gmap3c21.js?ver=5.1.1'></script>
<script>window.viewportUnitsBuggyfill.init({

refreshDebounceWait: 250,

hacks: window.viewportUnitsBuggyfillHacks

});
</script>
</body>

</html>