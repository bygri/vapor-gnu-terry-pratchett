# GNU Terry Pratchett

> 'We keep that name moving in the Overhead,' he said, and it seemed to Princess
> that the wind in the shutter arrays above her blew more forlornly, and the
> everlasting clicking of the shutters grew more urgent. 'He'd never have wanted
> to go home. He was a real linesman. His name is in the code, in the wind, in
> the rigging, and the shutters. Haven't you ever heard the saying "Man's not
> dead while his name is still spoken"?'

Makes [Vapor](https://github.com/vapor/vapor) add an `X-Clacks-Overhead` header
containing the text `GNU Terry Pratchett` to each response.

See the [GNU Terry Pratchett page](http://www.gnuterrypratchett.com) for more
information.

## Usage

Just add to your `providers`:

```swift
import Vapor
import VaporGNUTerryPratchett

let drop = Droplet()
try drop.addProvider(VaporGNUTerryPratchett.Provider.self)
```
