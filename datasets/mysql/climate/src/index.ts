import { Photon, Month } from '@generated/photon'

const photon = new Photon()

async function main() {

  // get all cities
  const cities = await photon.cities.findMany({
    select: {
      city: true
    }
  })
  console.log(cities)

  // get the January monthly average for all cities
  const JanAvg = await photon.monthlyAvgs({
    where: { 
      month: Month.Jan 
    },
  })
  console.log(JanAvg)

  photon.disconnect()

}

main()
