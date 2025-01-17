pragma solidity ^0.5.2;

import "../crowdsale/price/IncreasingPriceCrowdsale.sol";
import "../math/SafeMath.sol";

contract IncreasingPriceCrowdsaleImpl is IncreasingPriceCrowdsale {
    constructor (
        uint256 openingTime,
        uint256 closingTime,
        address payable wallet,
        IERC20 token,
        uint256 initialRate,
        uint256 finalRate
    )
        public
    {
        Crowdsale.initialize(initialRate, wallet, token);
        TimedCrowdsale.initialize(openingTime, closingTime);
        IncreasingPriceCrowdsale.initialize(initialRate, finalRate);
    }
}
