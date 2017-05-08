export default [
  {
    path: '/',
    name: 'index',
    component: require('components/lgame')
  },
  {
    path: '/detail/:id',
    name: 'detail',
    component: require('components/detail')
  },
  {
    path: '*',
    redirect: '/'
  }
]
