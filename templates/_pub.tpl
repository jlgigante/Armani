<div class="pub">
	
	{if $article.ville.slug == 'londres'}
		<SCRIPT language=JavaScript>
			<!--
			var RN = new String (Math.random());
			var RNS = RN.substring (2,11);
			document.write('<SCRIPT language="JavaScript1.1" src="http://uniprix.nouvelobs.com/RealMedia/ads/adstream_jx.ads/PERMANENTNOUVELOBS/mastercard-londres/1' + RNS + '@Middle?%%C%%?"><'+'/script>');
			//-->
		</SCRIPT>		
	
	{else if $article.ville.slug == 'new-york'}
		<SCRIPT language=JavaScript>
			<!--
			var RN = new String (Math.random());
			var RNS = RN.substring (2,11);
			document.write('<SCRIPT language="JavaScript1.1" src="http://uniprix.nouvelobs.com/RealMedia/ads/adstream_jx.ads/PERMANENTNOUVELOBS/mastercard-newyork/1' + RNS + '@Middle?%%C%%?"><'+'/script>');
			//-->
		</SCRIPT>
	{/if}
	
</div>