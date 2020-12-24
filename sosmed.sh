#!/bin/bash

load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.3
    done
}

printf '\n'
printf "\033[32;1m██╗░░░██╗░██████╗███████╗██████╗\033[33;1m  ╭━━━┳━━━┳━━━┳━╮╭━┳━━━┳━━━╮"
printf '\n'
printf "\033[32;1m██║░░░██║██╔════╝██╔════╝██╔══██╗\033[33;1m ┃╭━╮┃╭━╮┃╭━╮┃┃╰╯┃┃╭━━┻╮╭╮"
printf '\n'
printf  "\033[32;1m██║░░░██║╚█████╗░█████╗░░██████╔\033[33;1m  ┃╰━━┫┃╱┃┃╰━━┫╭╮╭╮┃╰━━╮┃┃┃┃"
printf '\n'
printf "\033[32;1m██║░░░██║░╚═══██╗██╔══╝░░██╔══██╗\033[33;1m ╰━━╮┃┃╱┃┣━━╮┃┃┃┃┃┃╭━━╯┃┃┃┃"
printf "\n"
printf "\033[32;1m╚██████╔╝██████╔╝███████╗██║░░██║\033[33;1m ┃╰━╯┃╰━╯┃╰━╯┃┃┃┃┃┃╰━━┳╯╰╯┃"
printf '\n'
printf "\033[32;1m░╚═════╝░╚═════╝░╚══════╝╚═╝░░╚═╝\033[33;1m ╰━━━┻━━━┻━━━┻╯╰╯╰┻━━━┻━━━╯  {versi;0.02}"

printf "\n"

printf  "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mYoutubme:https://www.youtube.com/channel/UChMIkGetnMB4qq9K5kNwkXA/featured"
printf '\n'
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WongBiasa"
printf '\n'
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/wong_biasa0723/"
printf "\n"
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/siapa_namasaya23/"
printf '\n'

sleep 0.08
printf "\033[32;1mMASUKKAN NAMA YANG\033[37;1m INGIN KAMU CARI:"
sleep 0.07
read username
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mNama Yang ingin Kamu Cari:$username"
printf '\n'
printf "\033[32;1m[\033[33;1m+\033[32;1m]\033[37;1mMencari nama"
printf '\n'
load
printf '\n'
if [[ -e $username.txt ]]; then
rm -rf $user.txt
fi
#instagram
check_insta=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'The link you followed may be broken'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m"

if [[ $check_insta == *'1'* ]]; then
printf "\e[1;92m Ada cok/Found!\e[0m https://www.instagram.com/%s\n" $username
printf "https://www.instagram.com/%s\n" $username > $username.txt
elif [[ $check_insta == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#facebook
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Facebook: \e[0m"
check_face=$(curl -s "https://www.facebook.com/$username" -L -H "Accept-Language: en" | grep -o 'not found'; echo $?)


if [[ $check_face == *'1'* ]]; then
printf "\e[1;92m Ada cok!\e[0m https://www.facebook.com/%s\n" $username
printf "https://www.facebook.com/%s\n" $username >> $username.txt
elif [[ $check_face == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#Twiter
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Twitter: \e[0m"
check_twitter=$(curl -s "https://www.twitter.com/$username" -L -H "Accept-Language: en" | grep -o 'page doesn’t exist'; echo $?)


if [[ $check_twitter == *'1'* ]]; then
printf "\e[1;92m Ada cok!\e[0m https://www.twitter.com/%s\n" $username
printf "https://www.twitter.com/%s\n" $username >> $username.txt
elif [[ $check_twitter == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#youtube
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] YouTube: \e[0m"
check_youtube=$(curl -s "https://www.youtube.com/$username" -L -H "Accept-Language: en" | grep -o 'Not Found'; echo $?)


if [[ $check_youtube == *'1'* ]]; then
printf "\e[1;92m Ada cok!\e[0m https://www.youtube.com/%s\n" $username
printf "https://www.youtube.com/%s\n" $username >> $username.txt
elif [[ $check_youtube == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## BLOGGER

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Blogger: \e[0m"
check=$(curl -s "https://$username.blogspot.com" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404'; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Ada cok!\e[0m https://%s.blogspot.com\n" $username
printf "https://%s.blogspot.com\n" $username >> $username.txt
elif [[ $check == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## GLOOGLE PLUS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GooglePlus: \e[0m"
check=$(curl -s "https://plus.google.com/+$username/posts" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404' ; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Ada cok!\e[0m https://plus.google.com/+%s/posts\n" $username
printf "https://plus.google.com/+%s/posts\n" $username >> $username
elif [[ $check == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## REDDIT

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Reddit: \e[0m"
check1=$(curl -s -i "https://www.reddit.com/user/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | head -n1 | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.reddit.com/user/%s\n" $username
printf "https://www.reddit.com/user/%s\n" $username >> $username.txt
fi

## WORDPRESS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wordpress: \e[0m"
check1=$(curl -s -i "https://$username.wordpress.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Do you want to register' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://%s.wordpress.com\n" $username
printf "https://%s.wordpress.com\n" $username >> $username.txt
fi

## PINTEREST

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pinterest: \e[0m"
check1=$(curl -s -i "https://www.pinterest.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '?show_error' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://www.pinterest.com/%s\n" $username
printf "https://www.pinterest.com/%s\n" $username >> $username.txt
fi

## GITHUB

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Github: \e[0m"
check1=$(curl -s -i "https://www.github.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://www.github.com/%s\n" $username
printf "https://www.github.com/%s\n" $username >> $username.txt
fi

## VK

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] VK: \e[0m"
check1=$(curl -s -i "https://vk.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada COK!\e[0m https://vk.com/%s\n" $username
printf "https://vk.com/%s\n" $username >> $username.txt
fi

## TUMBLR

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tumblr: \e[0m"
check1=$(curl -s -i "https://$username.tumblr.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://%s.tumblr.com\n" $username
printf "https://%s.tumblr.com\n" $username >> $username.txt
fi

## FLICKR

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flickr: \e[0m"
check1=$(curl -s -i "https://www.flickr.com/people/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mNot Adacok!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://www.flickr.com/photos/%s\n" $username
printf "https://www.flickr.com/photos/%s\n" $username >> $username.txt
fi

## STEAM

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Steam: \e[0m"
check1=$(curl -s -i "https://steamcommunity.com/id/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'The specified profile could not be found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://steamcommunity.com/id/%s\n" $username
printf "https://steamcommunity.com/id/%s\n" $username >> $username.txt
fi

## VIMEO

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Vimeo: \e[0m"
check1=$(curl -s -i "https://vimeo.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://vimeo.com/%s\n" $username
printf "https://vimeo.com/%s\n" $username >> $username.txt
fi


## SoundCloud

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SoundCloud: \e[0m"
check1=$(curl -s -i "https://soundcloud.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found'; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://soundcloud.com/%s\n" $username
printf "https://soundcloud.com/%s\n" $username >> $username.txt
fi

## DISQUS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Disqus: \e[0m"
check1=$(curl -s -i "https://disqus.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 NOT FOUND' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m ADa cok!\e[0m https://disqus.com/%s\n" $username
printf "https://disqus.com/%s\n" $username >> $username.txt
fi

## MEDIUM

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Medium: \e[0m"
check1=$(curl -s -i "https://medium.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mGax ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://medium.com/@%s\n" $username
printf "https://medium.com/@%s\n" $username >> $username.txt
fi

## DEVIANTART

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] DeviantART: \e[0m"
check1=$(curl -s -i "https://$username.deviantart.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://%s.deviantart.com\n" $username
printf "https://%s.deviantart.com\n" $username >> $username.txt
fi

## About.me

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] About.me: \e[0m"
check1=$(curl -s -i "https://about.me/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://about.me/%s\n" $username
printf "https://about.me/%s\n" $username >> $username.txt
fi


## Imgur

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Imgur: \e[0m"
check1=$(curl -s -i "https://imgur.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://imgur.com/user/%s\n" $username
printf "https://imgur.com/user/%s\n" $username >> $username.txt
fi

## FlipBoard

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flipboard: \e[0m"
check1=$(curl -s -i "https://flipboard.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://flipboard.com/@%s\n" $username
printf "https://flipboard.com/@%s\n" $username >> $username.txt
fi

## SlideShare

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SlideShare: \e[0m"
check1=$(curl -s -i "https://slideshare.net/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://slideshare.net/%s\n" $username
printf "https://slideshare.net/%s\n" $username >> $username.txt
fi

## Fotolog

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Fotolog: \e[0m"
check1=$(curl -s -i "https://fotolog.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok!\e[0m https://fotolog.com/%s\n" $username
printf "https://fotolog.com/%s\n" $username >> $username.txt
fi


## Spotify

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Spotify: \e[0m"
check1=$(curl -s -i "https://open.spotify.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://open.spotify.com/user/%s\n" $username
printf "https://open.spotify.com/user/%s\n" $username >> $username.txt
fi

## MixCloud

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] MixCloud: \e[0m"
check1=$(curl -s -i "https://www.mixcloud.com/$username" -H "Accept-Language: en" -L | grep -o 'error-message' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://www.mixcloud.com/%s\n" $username
printf "https://www.mixcloud.com/%s\n" $username >> $username.txt
fi

## Scribd

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Scribd: \e[0m"
check1=$(curl -s -i "https://www.scribd.com/$username" -H "Accept-Language: en" -L | grep -o 'show_404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://www.scribd.com/%s\n" $username
printf "https://www.scribd.com/%s\n" $username >> $username.txt
fi

## Codecademy

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Codecademy: \e[0m"
check1=$(curl -s -i "https://www.codecademy.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada Cok!\e[0m https://www.codecademy.com/%s\n" $username
printf "https://www.codecademy.com/%s\n" $username >> $username.txt
fi

## Gravatar

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Gravatar: \e[0m"
check1=$(curl -s -i "https://en.gravatar.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://en.gravatar.com/%s\n" $username
printf "https://en.gravatar.com/%s\n" $username >> $username.txt
fi

## Pastebin

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pastebin: \e[0m"
check1=$(curl -s -i "https://pastebin.com/u/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'location: /index' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada cok\e[0m https://pastebin.com/u/%s\n" $username
printf "https://pastebin.com/u/%s\n" $username >> $username.txt
fi

## Foursquare

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Foursquare: \e[0m"
check1=$(curl -s -i "https://foursquare.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mtidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://foursquare.com/%s\n" $username
printf "https://foursquare.com/%s\n" $username >> $username.txt
fi

## Roblox

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Roblox: \e[0m"
check1=$(curl -s -i "https://www.roblox.com/user.aspx?username=$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak ada!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Adacok!\e[0m https://foursquare.com/%s\n" $username
printf "https://foursquare.com/%s\n" $username >> $username.txt
fi

printf '\n'
printf "\033[32;1m+++++++\033[31;1mWarning...!\033[32;1m+++++++"
printf '\n'
printf "\033[34;1mMungkin Tools ini tidak 100% Berhasil"
printf '\n'
printf "\033[32;1m[\033[33;1m+\033[32;1m]\033[37;1mKamu Akan Keluar 3 detik"
sleep 2
load