#
# Copyright (c) 2012-2013 Max Oberberger (max@oberbergers.de)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License 
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
GCHSHV = git-cheatsheet-visual
GCHSH = git-cheatsheet

$(GCHSHV): $(GCHSHV).pdf
$(GCHSH): $(GCHSH).pdf

$(GCHSHV).pdf: $(GCHSHV).tex
	pdflatex --shell-escape $(GCHSHV).tex

$(GCHSH).pdf: $(GCHSH).tex
	pdflatex --shell-escape $(GCHSH).tex

clean:
	-rm $(GCHSHV).aux
	-rm $(GCHSH).aux
	-rm $(GCHSHV).log
	-rm $(GCHSH).log
	-rm $(GCHSHV).pdf
	-rm $(GCHSH).pdf
