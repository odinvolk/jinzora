{literal}
<style type="text/css">
#bodyDiv div {
  width:100%;
  height:100%;
}

#bodyDiv table {
  height:100%;
  width:100%;
  margin:0;
}

#bodyDiv table tr td {
  padding:0 8 0 8;
}

/* big links for easy clicking */
#bodyDiv table tr td a {
  width:100%;
  height:100%;
  display:block;
  padding:8 0 8 0;
}

#newListName {
  margin: 2px 2px 2px 2px;
  width:80px;
}

</style>
{/literal}
<div id="bodyDiv">
  {section name=player loop=$players}
  {if $smarty.section.player.index is even}
  <table class="jz_row1">
  {else}
  <table class="jz_row2">
  {/if}
  <tr>
    <td align="left">
      <a href="{$players[player].url}"> {$players[player].label|truncate:35} </a>
    </td>
  </tr>
  </table>
  {/section}
  
  {if $smarty.section.player.index is even}
  <table class="jz_row1">
  {else}
  <table class="jz_row2">
  {/if}
    <tr><td>
      <a style="display:inline;" href="$newList.href" onclick="{$newList.onclick}">{$newList.label}</a>
      <input id="newListName" value="{$newList.name}"/>
    </tr></td>
  </table>

  </div>
</div>