#!/usr/bin/ruby

trigger = ARGV.shift

if trigger == 'songstart'
  songinfo = {}

    STDIN.each_line { |line| songinfo.store(*line.chomp.split('=', 2))}
    `/Users/jason/.rbenv/versions/2.0.0-p0/bin/terminal-notifier -message "Artist: #{songinfo['artist']}\nAlbum: #{songinfo['album']}" -title "#{songinfo['title']}" -sender "com.fluidapp.FluidApp.Pandora"`
      end
