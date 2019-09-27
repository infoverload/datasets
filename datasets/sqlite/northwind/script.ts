import { Photon } from '@generated/photon'

const photon = new Photon()

async function main(){

  const allEmployees = await photon.employees.findMany()
  console.log(allEmployees)

  await photon.disconnect()
}

main()