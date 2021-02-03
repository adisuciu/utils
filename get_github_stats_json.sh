# https://docs.github.com/en/rest/reference/repos#releases
echo Gathering github release stats of analogdevicesinc/$1 to $1.json
curl   -H "Accept: application/vnd.github.v3+json"   https://api.github.com/repos/analogdevicesinc/$1/releases > $1.json
echo Done
