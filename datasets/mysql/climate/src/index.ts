import { Photon, Month } from '@generated/photon'

const photon = new Photon()

function main() {

  // get all cities
  const cities = photon.cities.findMany()
  console.log(cities)

  // get the January monthly average for all cities
  const JanAvg = photon.monthlyAvgs({
    where: { 
      month: Month.Jan 
    },
  })
  //console.log(JanAvg)

  photon.disconnect()

}

main()
