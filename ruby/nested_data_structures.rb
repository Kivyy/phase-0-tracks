Electronic_music = {
	progressive_house: {
		dj_name: ['Kaskade', 'Martin Garrix', 'Swedish House Mafia'],
		songs_of_the_year: ['In the name of love', 'Dont you worry child','Atmosphere'],
		song_bpm:  "126..130" 
	},
	trap: {
		dj_name: ['Carnage','Marshmello','NGHTMRE'],
		songs_of_the_year: ['Alone','Bricks','Aftershock'],
		song_bpm: "145..170"
	},
	trance: {
		dj_name: ['Armin Van Buuren','Cosmic Gate','Dash Berlin'],
		songs_of_the_year:['This is what it feels like','Exploration of space'],
		song_bpm: "125..150"
	},
	indie: {
		dj_name: ['Porter Robinson',"K?D","Madeon"],
		songs_of_the_year: ['Sad Machine','Pixel Empire','Genesis'],
		song_bpm: "110..135"
	},
	future_bass: {
		dj_name: ['Illenium','Don Diablo','Virtu'],
		songs_of_the_year:["Reverie",'Chemicals','Hide Away'],
		song_bpm: "150..170"
	}

}

p Electronic_music[:progressive_house][:dj_name][2]
p Electronic_music[:future_bass][:songs_of_the_year]
p Electronic_music[:indie][:songs_of_the_year][0]