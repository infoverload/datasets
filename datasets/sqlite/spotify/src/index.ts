import { Photon } from '@generated/photon'

const photon = new Photon()

async function main(){

  const allArtists = await photon.Artists.findMany()
  console.log(allArtists)

  await photon.disconnect()
}

main()