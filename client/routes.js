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
  });
  this.route('friends', {
    path: '/friends',
    template: 'friends',
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
