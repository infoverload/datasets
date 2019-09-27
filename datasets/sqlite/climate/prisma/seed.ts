import { Photon, CityClient, MonthlyAvgClient} from '@generated/photon'
const photon = new Photon()

let cities: City[] = require('./climate.json')

type City = {
  id: string
  city: string
  country: string
  monthlyAvg: MonthlyAvg[]
}

type Month = 'Jan' | 'Feb' | 'March' | 'April' | 'May' | 'June' | 'July' | 'Aug' | 'Sept' | 'Oct' | 'Nov' | 'Dec'
const months: Month[] = ['Jan', 'Feb', 'March', 'April', 'May', 'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec']

type MonthlyAvg = {
  id: string
  month: Month
  high: number
  low: number
  dryDays: number
  snowDays: number
  rainfall: number
}

async function main() {
  const photon = new Photon()
  await photon.connect()

  for (let i = 0; i < cities.length; i++) {
    const city = cities[i]
    const savedCity = await photon.cities.create({
      data: {
        city: city.city,
        country: city.country,
      },
    })
    for (let j = 0; j < city.monthlyAvg.length; j++) {
      const monthlyAvgs = city.monthlyAvg[j]
      await photon.monthlyAvgs.create({
        data: {
          month: months[j],
          dryDays: monthlyAvgs.dryDays || 0,
          high: monthlyAvgs.high || 0,
          low: monthlyAvgs.low || 0,
          rainfall: monthlyAvgs.rainfall || 0,
          snowDays: monthlyAvgs.snowDays || 0,
          city: {
            connect: {
              id: savedCity.id,
            },
          },
        },
      })
    }
  }

  await photon.disconnect()
}

main().catch(console.error)