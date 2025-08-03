const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('Conditionals', () => {

  describe('Example 1', () => {

    it('demonstrates conditionals', async () => {
      const Contract = await ethers.getContractFactory('Conditionals1')
      let contract = await Contract.deploy()
      expect(await contract.evenOrOdd1(2)).to.equal('even')
      expect(await contract.evenOrOdd1(10)).to.equal('even')
      expect(await contract.evenOrOdd1(3)).to.equal('odd')
      expect(await contract.evenOrOdd1(11)).to.equal('odd')

      expect(await contract.evenOrOdd2(2)).to.equal('even')
      expect(await contract.evenOrOdd2(3)).to.equal('odd')

      expect(await contract.evenOrOdd3(2)).to.equal('even')
      expect(await contract.evenOrOdd3(3)).to.equal('odd')
    })
  })

  describe('Example 2', () => {

    it('it demonstrates else if & nested conditionals', async () => {
      const Contract = await ethers.getContractFactory('Conditionals2')
      let contract = await Contract.deploy()
      expect(await contract.checkNumber1(1)).to.equal(0)
      // 1 is less than 5, so it returns 0
      expect(await contract.checkNumber1(20)).to.equal(1)
      // 20 is between 10 and 30, so it returns 1
      expect(await contract.checkNumber1(3000)).to.equal(2)
      // 3000 is greater than 1000, so it returns 2

      expect(await contract.checkNumber2(1)).to.equal(0)
      // 1 is less than 5, so it returns 0
      expect(await contract.checkNumber2(6)).to.equal(1)
      // 6 is between 5 and 10, so it returns 1
      expect(await contract.checkNumber2(20)).to.equal(2)
      // 20 is between 10 and 30, so it returns 2
      expect(await contract.checkNumber2(3000)).to.equal(3)
      // 3000 is greater than 1000, so it returns 3
    })

  })
})
