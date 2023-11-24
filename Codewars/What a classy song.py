class Song:
    def __init__(self, title, artist):
        self.title = title
        self.artist = artist
        self.have_heard = []
        
    def how_many(self, lst):
        counter = 0
        for listener in lst:
            listener = listener.lower()
            if listener not in self.have_heard:
                self.have_heard.append(listener)
                counter += 1
                
        return counter
        


mount_moose = Song('Mount Moose', 'The Snazzy Moose')

# day 1 (or test 1)
hm = mount_moose.how_many(['John', 'Fred', 'BOb', 'carl', 'RyAn'])

print(hm)

# day 2
hm = mount_moose.how_many(['JoHn', 'Luke', 'AmAndA'])

print(hm)

