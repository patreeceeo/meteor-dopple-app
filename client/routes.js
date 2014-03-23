Router.configure({
  layoutTemplate: 'layout'
});

Router.map(function() {
  this.route('splash_screen', {
    path: '/',
    template: 'splash_screen',
  });
  this.route('profile', {
    path: '/user/:user_id',
    template: 'profile',
    data: {
      profile_route: true
    }
  });
  this.route('store', {
    path: '/store',
    template: 'store',
    data: {
      store_route: true
    }
  });
  this.route('park', {
    path: '/park',
    template: 'park',
    data: {
      park_route: true
    }
  });
  this.route('settings', {
    path: '/settings',
    template: 'settings',
    data: {
      settings_route: true
    }
  });
  // this.route('multiple_yield_example', {
  //   path: '/survey/:survey_id/create_question',
  //   template: 'create_survey_question',
  //   layoutTemplate: 'vertically_split_layout',
  //   yieldTemplates: {
  //     'survey_question': {
  //       to: 'leftContent'
  //     },
  //     'create_survey_question': {
  //       to: 'rightContent'
  //     }
  //   }
  // });
});
