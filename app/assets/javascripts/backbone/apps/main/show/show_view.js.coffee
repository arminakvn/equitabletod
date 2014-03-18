@Equitabletod.module "MainApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Home extends App.Views.Layout
    template: "main/show/show_layout"
    tagName: "home-region"

    events:
        'click #etodpage':'fireEtod'
    	'click #more':'addMore'
    	'click #less':'showLess'

    addMore: (e)=>
    	$("#more").html("<b> </b>")
    	$("#less").html("<b> Less</b>")

    showLess: (e) =>
    	$("#div2").html("<b> </b>")

    fireEtod: (e) =>
        MainApp.vent.trigger "etodFired"


    	

