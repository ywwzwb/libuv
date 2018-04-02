# -*- coding: utf-8 -*-
Pod::Spec.new do |s|
  s.name         = 'libuv'
  s.version      = '1.19.2'
  s.summary      = 'A community-maintained release of libuv for Cocoa projects '
  s.description  = <<-DESC
    libuv is a multi-platform support library with a focus on asynchronous I/O.
    This release tracks the upstream project at https://github.com/libuv/libuv.
                   DESC
  s.homepage     = 'http://libuv.org'
  s.license      = { :type => 'Node', :file => 'LICENSE' }
  s.authors      = { :file => 'AUTHORS' }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = false
  s.source       = { :git => 'https://github.com/ide/libuv.git', :tag => "v#{s.version.to_s}-cocoapod" }
  s.public_header_files = 'include/*.h'
  s.source_files  = [
    'include/tree.h',
    'include/uv-aix.h',
    'include/uv-bsd.h',
    'include/uv-darwin.h',
    'include/uv-errno.h',
    'include/uv-linux.h',
    'include/uv-sunos.h',
    'include/uv-threadpool.h',
    'include/uv-unix.h',
    'include/uv-version.h',
    'include/uv.h',
    
    'src/fs-poll.c',
    'src/heap-inl.h',
    'src/inet.c',
    'src/queue.h',
    'src/threadpool.c',
    'src/uv-common.c',
    'src/uv-common.h',
    'src/uv-data-getter-setters.c',
    'src/version.c',
    
    'src/unix/async.c',
    'src/unix/atomic-ops.h',
    'src/unix/bsd-ifaddrs.c',
    'src/unix/core.c',
    'src/unix/darwin-proctitle.c',
    'src/unix/darwin.c',
    'src/unix/dl.c',
    'src/unix/fs.c',
    'src/unix/fsevents.c',
    'src/unix/getaddrinfo.c',
    'src/unix/getnameinfo.c',
    'src/unix/internal.h',
    'src/unix/kqueue.c',
    'src/unix/loop-watcher.c',
    'src/unix/loop.c',
    'src/unix/pipe.c',
    'src/unix/poll.c',
    'src/unix/process.c',
    'src/unix/proctitle.c',
    'src/unix/signal.c',
    'src/unix/spinlock.h',
    'src/unix/stream.c',
    'src/unix/tcp.c',
    'src/unix/thread.c',
    'src/unix/timer.c',
    'src/unix/tty.c',
    'src/unix/udp.c',
  ]
end
