package com.gtunes

import grails.converters.JSON
class CobaViewController {

    def index() { }
    
    def cobaFindAll() {
        [pengguna:User.findAll()]
    }
    
    def cobaDatePicker() {        
    }
    
    def cobaPaging(Integer max) {
        params.max = Math.min(max ?: 2, 100)
        [songInstanceList: Song.list(params), songInstanceTotal: Song.count()]
    }
    
    def cobaTagLib() {
        
    }
    
    def cobaAjax() {        
    }
    
    def showTime() {
        render "The time is ${new Date()}"
    }
    
    def remoteLink() {        
    }
    
    def renderString() {
        render "hallo - ini CobaView.renderString"
    }
    
    def contohParams() {
        def a = params.a?.toInteger()
        def b = params.b?.toInteger()
        int hasil = a + b
        render "a+b = " + hasil
    }
    
    def formRemote() {
        render "Salam, " + params.tbNama?.toString()
    }
    
    def autoComplete() {
//        def songList = Song.withCriteria {
//            or {
//                like("title", "%" + params.term?.toString() + "%")
//                like("artist", "%" + params.term?.toString() + "%")
//            }
//            maxResults(3)
//        }
//        def arrSong = []
//        songList.each{
//            def tempMap = [:]
//            tempMap.put("id", it.id)
//            tempMap.put("value", it["title"])
//            tempMap.put("label", it.artist + " - " + it.title)
//            arrSong.add(tempMap)
//        }
//        render arrSong as JSON
        
        def sqlStr = """
            select new map(
                id as id, title as value, 
                concat(artist, ' - ', title) as label
            )
            from ${Song.name} where title like concat('%', :paramTitle, '%')
        """
        def arrSong = Song.executeQuery(sqlStr, [paramTitle:params.term?.toString()])
        log.error(arrSong as JSON)
        render arrSong as JSON
    }
}
