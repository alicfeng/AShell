#coding:utf-8
from fabric.api import *

#主机信息
host01 = 'root@172.17.0.4:22'
host02 = 'root@172.17.0.5:22'

#主机密码
pwdforh01 = 'fenglican'
pwdforh02 = 'fenglican'

#绑定主机
env.hosts = [host01,host02]
env.passwords = {
	host01 : pwdforh01,
	host02 : pwdforh02
}

@task
def demo():
	run('ls')

@task
@hosts(host01)
def installgogs():
	run('mkdir www && cd www && wget http://samego.com/gogs_v0.9.71_linux_386.tar.gz && tar -xzvf gogs_v0.9.71_linux_386.tar.gz')
	run('cd www/gogs && ./gogs web &')

@task
def localcmd():
	local("echo $PATH")
