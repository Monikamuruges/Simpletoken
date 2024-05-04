const { buildModule } =require("@nomicfoundation/hardhat-ignition/modules");
module.exports = buildModule("simpletoken",(m) => {
    const arg = m.getParameter("_initialSupply",10)
    const token =m.contract("SimpleToken",[arg]);

    return { token };
});