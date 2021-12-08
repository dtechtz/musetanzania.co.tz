<script>
                           var table ='#mytable'
                           $('#maxRows').on('change', function(){
                               $('.pagenation').html()
                               var trum =0
                               var maxRows = parseInt($(this).val())
                               var totalRows = $(table+'tbody tr').length
                               $(table+' tr:gt(0)').each(function(){
                                   trum++
                                   if(trum > maxRows){
                                       $(this).hide()
                                       
                                   }
                                   if(trum <= maxRows){
                                       $(this).show()
                                   }
                               })
                               if(totalRows > maxRows){
                                   var pagenum = Math.ceil(totalRpws/maxRows)
                                   for(var i=1; i<=pagenum;){
                                     $('.pagenation').append('<li data-page="'+i+'">\<span>'+ i++ +'<span class="sr-only">(current)</span>\n\
                                       </span></li>').show()  
                                   }
                               }
                               $('.pagenation li:first-child').addClass('active')
                               $('.pagenation li').on('click',function(){
                                   var pageNum = $(this).attr('data-page')
                                   var trIndex =0;
                                   $('.pagenation li').removeClass('active')
                                   $(this).addClass('active')
                                   $(table+' tr:gt(0)').each(function(){
                                       trIndex++
                                       if(trIndex > (maxRows*pageNum) || trIndex <=((maxRows*oageNum)-maxRows)){
                                           $(this).hide()
                                       }
                                       else{
                                           $(this).show()
                                       }
                                   })
                               })
                           })
                           $(function(){
                               $('table tr:eq(0)').prepend('<th>ID</th>')
                               var id =0;
                               $('table tr:gt(0)').each(function(){
                                   id++
                                   $(this).prepend('<td>'+id+'</td>')
                               })
                           })
                           
                           
                        </script>