function  finditem(){ 
        var ele=className(v7feature);
        var subcount=ele.findOnce(0).childCount();
        var main=ele.findOnce(0);
        for(var i=0;i<subcount;i++){
            try{
                play('global',i);
                play('global','点击');
                return main.child(i);
                }catch(e){
                }
            }
    }