App = Ember.Application.create({});


App.Router.map(function() {
    this.resource('about');
    this.resource('paddlers', function() {
        this.resource('paddler', { path: ':paddler_id' });
    });

});

App.PaddlersRoute = Ember.Route.extend({
    model: function() {
        //return paddlers;
        return $.getJSON('http://localhost:3000/api/get_paddlers.json').then(function(response) {
            return response.map(function(paddler) {
                paddler.firstName = paddler.first_name;
                paddler.lastName = paddler.last_name;
                return paddler;
            });
        });
    }
});

App.PaddlerRoute = Ember.Route.extend({
     model: function(params) {
         //return paddlers.findBy('id', params.paddler_id);
         return $.getJSON('http://localhost:3000/api/get_paddler/'+params.paddler_id).then(function(data) {
             return data.map(function(paddler) {
                 paddler.firstName = paddler.first_name;
                 paddler.lastName = paddler.last_name;
                 return paddler;
             });
         });
     }
});

App.PaddlerController = Ember.ObjectController.extend({
    isEditing: false,

    actions: {
        edit: function() {
            this.set('isEditing', true);
        },
        doneEditing: function() {
            this.set('isEditing', false);
        }
    }
});

var paddlers = [{
  id: '1',
  firstName: "Amanda",
  lastName: "Li",
  gender: 'Female',
  weight: '145',
  side: 'Right'
}, {
  id: '2',
  firstName: "Andy",
  lastName: "Wu",
  gender: 'Male',
  weight: '180',
  side: 'Right'
}];