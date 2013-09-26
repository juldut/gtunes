package com.gtunes

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
}
