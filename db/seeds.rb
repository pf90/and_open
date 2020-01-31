# Reset database
Match.destroy_all
Header.destroy_all
Member.destroy_all

Member.create(name: 'Gerry Stack', original_url: 'https://stackoverflow.com/')
Member.create(name: 'Jimmy Middleton', original_url: 'https://medium.com/')
Member.create(name: 'Git Hubington', original_url: 'https://github.com/')



