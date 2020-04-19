:: Convert jp2 to djvu
:: this is useful to remake a whole book from web archive, from the single page images, when the downlodable pdf or djvu converted files are too low quality (for instance text is not clearly readable).
:: needed: install imagemagic to convert jp2 to pbm (bitonal image files), then use minidjvu (which is limited and only accepts bitonal images).

for %%X in (*.jp2) do convert "%%X" "%%X.pbm"
minidjvu.exe -verbose -warnings *.pbm traiteelementair00dufo.djvu
pause
