# YTDLScripts
A collection of batch files to make using youtube-dl easier

## Notes

The scripts need to be able to find a copy of `youtube-dl.exe`, so they should be placed next to a `youtube-dl.exe` file, or a path to a `youtube-dl.exe` should be present on your `%PATH%` so the scripts can find it from anywhere.

To be able to use the scripts in `cmd.exe` without having to navigate to them or provide a complete path each time, the folder containing them should be on your `%PATH%`.

The scripts also expect an `Output` folder and a `Cache` folder to be present in the same directory as they are.
The `Cache` folder will be used for temporary cache files and the `Output` folder is where the videos will be downloaded to.

Most scripts will allow you to provide more than one video per command.
By default most scripts will treat the arguments passed to it as a list of urls, video ids or playlist identifiers.
The exceptions to this rule include `ytdl-update.bat`, which expects no arguments as it's a simple update command, and `ytdl-get-playlist-start.bat` which expects every other argument to be a start index and may not function with more than two arguments as it has never been tested with more than two.

Note the following:
- An 'id' is a sequence of symbols, letters and numbers that uniquely identifies a Youtube video. Youtube urls specifying a specific video typically follow the pattern `https://www.youtube.com/watch?v=<id>`, in which case the part following `v=` and before any `&` if present will be the video id.
- A 'playlist id' is also a sequence of symbols, letters and numbers, but is typically much longer than a video id because theoretically it's possible to have more playlists than videos. A URL linking to a playlist in full typically takes the form `https://www.youtube.com/playlist?list=<list-id>` and the url for a video within a playlist typically takes the form `https://www.youtube.com/watch?v=<id>&list=<list-id>`, where 'id' is the video id, 'list-id' is the playlist id (there may be other parameters too). Playlist ids tend to start with 'PL' for a proper playlist and 'UU' for a playlist of a given user's entire collection of uploaded videos.
- Typically it is quicker and easier to pass the id or playlist id rather than a full URL, however some ids begin with `-`, which can be an issue as they will sometimes be misinterpreted as a flag argument being passed to `youtube-dl`. Quoting the argument or using the full url may help to prevent this, but your mileage may vary.

## Files

* `ytdl-update.bat` - The command for simply updating youtube-dl
* `ytdl-get.bat` - The standard command for getting single videos.
* `ytdl-get-with-id.bat` - Retrieves a single video, appending its id string to the video name. Useful when multiple videos have the same name.
* `ytdl-get-title.bat` - Retrieves the title/filename of a single video.
* `ytdl-get-playlist.bat` - Retrieves an entire playlist, ignoring any errors in the process.
* `ytdl-get-playlist-with-id.bat` - Retrieves an entire playlist, appending each video's id string to the video name, ignoring any errors in the process. Useful when multiple videos have the same name.
* `ytdl-get-playlist-start.bat` - Retrieves an entire playlist starting from a specified index, ignoring any errors in the process.
* `ytdl-get-playlist-list.bat` - Lists the contents of a playlist without actually downloading it. Seems to not actually provide the titles of the videos, just counts them?
* `ytdl-get-playlist-best.bat` - Retrieves an entire playlist at the best quality available, ignoring any errors in the process.
* `ytdl-get-id.bat` - Retrieves the id string of a single video.
* `ytdl-get-best.bat` - Retrieves a single video, explicitly requesting the best quality.
* `ytdl-get-annotations.bat` - Retrieves a video as well as any annotations - e.g. subtitles.
