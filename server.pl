				%prolog Mode
				%prolog based web application practice


:-use_module(library(http/thread_httpd)).
:-use_module(library(httpd/http_dispatch)).

server(Port):-http_server(httpd_dispatch, [port(Port)]).


:- http_handler(/, say_hi, []).

say_hi(_Requets):-
	format('Content-type: text/plain~n~n'),
	format('Hello World!').
