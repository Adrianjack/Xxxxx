-- {"id":1308639967,"ver":"1.1.5","libVer":"1.0.0","author":"Jobobby04","dep":["ReadWN>=1.0.11"]}

local GENRES = {
	"All",
	"Action",
	"Adult",
	"Adventure",
	"Comedy",
	"Contemporary Romance",
	"Drama",
	"Eastern Fantasy",
	"Ecchi",
	"Fantasy",
	"Fantasy Romance",
	"Gender Bender",
	"Harem",
	"Historical",
	"Horror",
	"Josei",
	"Lolicon",
	"Magical Realism",
	"Martial Arts",
	"Mature",
	"Mecha",
	"Mystery",
	"Psychological",
	"Romance",
	"School Life",
	"Sci-fi",
	"Seinen",
	"Shoujo",
	"Shounen",
	"Shounen Ai",
	"Slice of Life",
	"Smut",
	"Sports",
	"Supernatural",
	"Tragedy",
	"Video Games",
	"Wuxia",
	"Xianxia",
	"Xuanhuan",
	"Yaoi",
	"Two-dimensional",
	"Erciyuan",
	"Fan-Fiction",
	"Game",
	"Military",
	"Urban Life",
	"Yuri",
	"Chinese",
	"Korean",
	"Japanese",
	"Isekai",
	"Magic",
	"Shoujo Ai",
	"Urban",
	"Virtual Reality"
}

return Require("FansMTL")("https://www.fansmtl.com", {
	id = 1308639967,
	name = "FansMTL",
	shrinkURLNovel = "^.-fansmtl%.com",
	hasCloudFlare = true,

	genres = GENRES,

	listingsMap = {
		{
			name = "Recently Added Chapters",
			increments = false,
			selector = "#latest-updates .novel-list.grid.col .novel-item a",
			url = function(data)
				return "https://www.fansmtl.com"
			end
		},
		{
			name = "Popular Daily Updates",
			increments = true,
			url = function(data)
				return "https://www.fansmtl.com/list/all/all-lastdotime-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "Most Popular",
			increments = true,
			url = function(data)
				return "https://www.fansmtl.com/list/all/all-onclick-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "New to Web Novels",
			increments = true,
			url = function(data)
				return "https://www.fansmtl.com/list/all/all-newstime-" .. (data[PAGE] - 1) .. ".html"
			end
		}
	},
})
