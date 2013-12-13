#!/usr/bin/env python
"""
Super echo program
Copyright 2013 Sam Saint-Pettersen

Released under the MIT/X11 License.

Usage: secho.py foo bar
       secho.py ! foo,bar
       cat foo.txt | secho.py
"""
import sys
import HTMLParser

class SuperEcho:
	args = ''
	h = HTMLParser.HTMLParser()
	def __init__(self, args): # Stdin mode.
		if(len(args) < 2):
			for line in sys.stdin:
				print(self.h.unescape(line.rstrip('\n')))
			sys.exit(0)

		if args[1][0] == '?': # Display info and usage.
			print(__doc__)

		elif args[1][0] == '!': # Array argument mode.
			lines = args.split(',')
			for line in lines:
				print(self.h.unescape(line))
		else:
			for i in range(1, len(args)): # Argument mode.
				if i == 1: self.args += args[i]
				else: self.args += ' ' + args[i]
			print(self.h.unescape(self.args))

if __name__ == '__main__':
	SuperEcho(sys.argv)
