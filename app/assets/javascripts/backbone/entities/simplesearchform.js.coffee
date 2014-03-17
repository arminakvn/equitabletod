@Equitabletod.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.SimpleSearchArg extends Entities.Model

	class Entities.SimpleSearchArgs extends Entities.Collection
		model: Entities.SimpleSearchArg
		sync: ->
			return null

		fetch: ->
			return null

		save: ->
			return null

	API =
		getSearchArgs: ->
			searchargs = new Entities.SimpleSearchArgs [
				{qury: ""}
				{muni: ""}
				{station_name: ""}
				]

		getSearchArg: ->
			searcharg = new Entities.SimpleSearchArg(field: muni)


	App.reqres.setHandler "searcharg:entities", ->
		API.getSearchArgs()

	App.reqres.setHandler "searcharg:entity", (muni)->
		API.getSearchArgs(muni)





