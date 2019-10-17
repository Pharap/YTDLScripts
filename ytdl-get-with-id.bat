::
:: MIT License
:: 
:: Copyright (c) 2019 Pharap (@Pharap)
:: 
:: Permission is hereby granted, free of charge, to any person obtaining a copy
:: of this software and associated documentation files (the "Software"), to deal
:: in the Software without restriction, including without limitation the rights
:: to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
:: copies of the Software, and to permit persons to whom the Software is
:: furnished to do so, subject to the following conditions:
:: 
:: The above copyright notice and this permission notice shall be included in all
:: copies or substantial portions of the Software.
:: 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
:: IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
:: LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
:: OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
:: SOFTWARE.
::

::
:: Retrieves a single video, appending its id string to the video name.
:: Useful when multiple videos have the same name.
::

@IF [%1] == [] (
@ECHO Usage: %~n0 path ...
@GOTO :eof
)

@SETLOCAL
@SET "root=%~dp0"
:whileargs
@IF NOT [%1] == [] (
youtube-dl.exe -o "%root%Output/%%(title)s-%%(id)s.%%(ext)s" --youtube-skip-dash-manifest --no-playlist --no-call-home --cache-dir "Cache" "%1"
@SHIFT
@GOTO :whileargs
)
@ENDLOCAL