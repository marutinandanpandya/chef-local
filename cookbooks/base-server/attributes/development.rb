
node['rvm']['user_installs'] = [
  { 'user'          => 'intel',
    'default_ruby'  => '2.2',
    'rubies'        => ['2.1.3', '2.1.4']
  }
]

node['rvm']['global_gems'] = [
  { 'name'    => 'bundler' },
  { 'name'    => 'rake' },
  { 'name'    => 'hirb' }
]

node['rvm']['rvmrc'] = {
  'rvm_project_rvmrc'             => 1,
  'rvm_gemset_create_on_use_flag' => 1,
  'rvm_trust_rvmrcs_flag'         => 1
}
node['rvm']['rvm_gem_options'] = "--rdoc --ri"