import { Photon } from '@generated/photon'

const photon = new Photon()

async function main(){

  const appleStouts = await photon.Apples.findMany()
  console.log(appleStouts)

  await photon.disconnect()
}

main()