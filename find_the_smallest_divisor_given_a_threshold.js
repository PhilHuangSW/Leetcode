// #################### FIND THE SMALLEST DIVISOR GIVEN A THRESHOLD ####################

// # Given an array of integers nums and an integer threshold, we will choose a positive integer divisor and divide all the array by it and sum the result of the division. Find the **smallest** divisor such that the result mentioned above is less than or equal to threshold.

// # Each result of division is rounded to the nearest integer greater than or equal to that element. (For example: 7/3 = 3 and 10/2 = 5).

// # It is guaranteed that there will be an answer.

// # **Example 1:**
// # ```
// # Input: nums = [1,2,5,9], threshold = 6
// # Output: 5
// # Explanation: We can get a sum to 17 (1+2+5+9) if the divisor is 1. 
// # If the divisor is 4 we can get a sum to 7 (1+1+2+3) and if the divisor is 5 the sum will be 5 (1+1+1+2). 
// # ```

// # **Example 2:**
// # ```
// # Input: nums = [2,3,5,7,11], threshold = 11
// # Output: 3
// # ```

// # **Example 3:**
// # ```
// # Input: nums = [19], threshold = 5
// # Output: 4
// # ```

// # **Constraints:**
// # - 1 <= nums.length <= 5 * 10^4
// # - 1 <= nums[i] <= 10^6
// # - nums.length <= threshold <= 10^6

// #################### SOLUTION ####################
/*
 * @param {number[]} nums
 * @param {number} threshold
 * @return {number}
 */
var smallestDivisor = function(nums, threshold) {
  let left = 1
  let right = nums.reduce(function(a, b) {
    return Math.max(a, b)
  })
  while (left <= right) {
    let pivot = Math.floor((left + right)/2)
    let dividedArray = nums.map(num => {
      return Math.ceil(num/pivot)
    })
    attempt = sum(dividedArray)
    if (attempt > threshold) {
      left = pivot + 1
    } else {
      right = pivot - 1
    }
  }
  return left
};

function sum(nums) {
  let sum = 0
  for (let i = 0; i < nums.length; i++) {
    sum += nums[i]
  }
  return sum
}

const nums1 = [1,2,5,9]
const threshold1 = 6
const nums2 = [2,3,5,7,11]
const threshold2 = 11
const nums3 = [19]
const threshold3 = 5
const nums4 = [5,10,12,14,23]
const threshold4 = 8
const nums5 = [1]
const threshold5 = 1
const nums6 = [1,1]
const threshold6 = 2
const nums7 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19,20,100]
const threshold7 = 25
const nums8 = [1,2,3]
const threshold8 = 1000000
const nums9 = [824479,812871,712520,883102,907829,378227,155112,975943,385184,844480,145296,721339,483858,408951,187890,903795,113163,72691,656469,806253,398890,331682,561048,973001,831335,537735,509629,957350,955600,583935,737819,877104,501084,57275,394241,11716,638208,41114,463901,536830,279269,427421,183100,124336,195195,308980,651694,767416,447042,251451,116678,42585,540591,567493,456429,975091,654686,997718,440844,45395,786359,295530,155867,407575,74674,605046,773000,46684,829125,985094,774968,701453,582574,789402,130903,174698,864824,333572,268498,607785,505451,120938,334307,475306,474821,414164,583126,223615,321088,194158,24100,948722,453244,335429,386970,725948,497824,592393,377676,770299,358143,714997,229369,604690,219736,660522,564817,321928,609322,366896,719925,488849,212615,17316,277246,361860,972274,929056,377039,613039,417903,183640,26520,576421,13861,139733,683673,235847,390664,987604,360461,621835,335304,311514,778614,325920,510245,162134,624166,405600,371521,34604,914115,145157,993668,231207,652753,922845,183778,20586,294209,607329,869459,963306,414676,951799,499963,895980,342667,62020,307809,590046,92972,394085,264992,514149,836119,822608,800133,977409,516509,8053,126281,47324,464747,935768,228594,407296,693678,134297,274,910038,669248,415523,506798,717750,726162,833501,765502,937526,921065,716426,246783,272270,161396,986152,589079,888803,288791,860129,701081,609255,660704,368832,529643,8701,707209,342816,309545,626516,472592,161128,535301,374201,994094,514616,295897,945901,140484,983208,411175,658298,326861,712212,800375,485973,691720,619968,273291,517504,307204,137007,421438,84426,2200,343477,667856,854988,725230,867136,188887,44760,839540,705659,696205,457261,273207,489184,23757,533399,484370,902487,658692,752993,683169,652807,686576,959814,191678,798268,553607,538605,209055,66797,969452,599888,434156,534389,144773,654165,636253,386635,919636,331278,234145,55088,760584,959937,851314,40474,734,717339,902017,361611,646203,113931,899991,895350,700825,819155,387556,149232,294794,340440,721406,821383,598747,726388,640821,133036,562152,572216,965682,759264,173451,77968,558274,350775,920609,105882,583651,510052,86590,86305,806851,235322,665619,562863,98605,626125,626083,286936,881675,324192,324243,302263,78917,697027,283919,293223,825095,390868,102263,827875,164243,451094,528734,770733,148829,236130,720498,649951,274147,256663,312793,488526,190242,632621,128959,401498,148911,599422,699041,470146,564448,254702,421720,476426,601981,214734,524915,581505,731023,803441,882294,742283,846234,642253,536900,486713,546262,706752,172811,760244,391852,980486,104686,474719,136815,116133,840547,383943,851908,862352,442942,139571,100691,948701,764805,926100,898186,176385,454239,916723,697086,82898,16881,783465,423356,817149,674736,468188,951497,178101,881915,524390,735057,28124,35700,446822,575595,498123,961376,204003,424799,504539,453373,445453,67229,606452,538080,24120,975330,826481,697340,844149,382886,281002,944897,205490,260507,40145,137452,782058,427312,591630,160224,163233,868713,782459,933661,51220,442491,861962,329366,25493,409262,572594,548889,520663,190428,723345,199289,573939,961826,511883,572481,44249,876000,665809,707521,476007,412847,1098,878424,167945,569830,922170,603143,446013,711478,359529,92249,612594,129133,846622,525215,425875,265002,951504,80279,28177,92838,849716,950862,326916,361027,788506,827023,286752,714177,176289,456348,926482,625609,339158,682229,281816,378734,530842,422797,292790,46566,850411,974665,955254,125569,437908,621271,444289,360272,566787,79750,245655,2362,539857,168042,679319,577671,457171,635787,456356,670959,930605,119916,495218,681770,632371,884948,885189,617084,894609,786216,195995,964396,503927,619622,965784,947016,378562,543636,852261,612975,654416,726608,343960,314027,283047,834860,968979,779926,319260,23929,907759,878491,487199,269529,275128,421188,414425,606303,127780,509358,211325,406163,344147,89194,316521,861331,720451,552796,302509,483946,458381,763668,138756,404758,551593,118648,517309,477765,6253,860923,967075,627777,331176,645084,838806,322191,174837,154243,107635,28006,895393,668745,131857,100376,782635,948204,184590,119835,480668,191517,203346,204036,925669,801427,183609,229380,923245,148196,653964,91736,521540,480383,653878,305476,94975,477583,379416,343763,239911,288167,778135,643236,332558,664322,445837,181860,377075,383967,312730,165228,166527,985543,839875,358199,866377,783054,553496,911487,89426,934096,662503,589459,770166,944535,418427,978986,720823,142881,69339,470954,512549,530855,597322,218059,763012,173149,465631,697008,293330,931607,627626,947818,558478,42634,970642,288569,597034,158998,57270,271250,697980,481189,477914,788361,476576,896021,488969,937229,499211,252964,999209,959533,764219,820689,419047,29375,431980,733356,779618,569049,631254,809730,999103,765483,7067,233428,487087,995950,89621,968521,500003,865687,992904,293054,704976,432754,279651,611624,874051,430735,929570,472013,618868,175265,487668,33322,720755,512299,597129,911701,325649,82333,107989,215897,831772,68350,868291,517465,627986,264374,669201,962365,315136,92831,134823,733714,521592,747831,417396,576001,816168,806006,287508,313044,775409,339378,552338,350124,449838,970671,984962,524006,217840,603574,18215,264895,176957,597674,872156,729361,877802,759760,655976,544294,353260,768899,402894,214585,995687,25315,56636,653140,500129,562218,410322,446400,848965,783770,438686,104086,161649,90135,169625,266680,609865,915333,991969,687703,516134,495786,483985,175171,619969,941563,546334,440157,809008,347335,521998,850229,663509,619893,691801,88767,396168,424538,675118,209846,366673,513287,618602,50450,882046,115789,192336,276753,588434,174592,576179,121052,787129,279922,460496,632107,773544,968174,844769,646462,759293,235261,707732,828294,463981,727552,216869,792032,13861,363635,775201,628746,736698,204925,62940,522527,820656,173518,45523,489303,449355,262148,210249,782454,945748,356757,441929,829866,414813,792775,383761,620061,662965,511233,67500,44258,642710,340098,446555,910165,498500,782911,390949,767458,259364,601127,458275,647936,41432,805,231300,589777,32693,534035,755398,535289,36575,64856,103082,453453,187116,495767,698892,112076,599754,657299,759719,957545,989668,345667,837779,214195,299327,417920,825126,6500,871172,138079,126069,769827,395619,905169,586039,603850,387316,267568,159856,520649,765456,967380,848695,808880,304429,346558,162952,747515,592178,436477,722773,211184,935521,958466,914702,141423,283540,892444,859250,994800,32893,983218,419238,704546,626490,601256,822643,711637,860789,938026,171892,929099,109275,243311,698145,717778,146445,726444,224744,120500,761982,376242,592315,921397,662500,534491,694324,602823,549978,156791,758132,190763,42904,833839,323568,341394,54017,757943,484304,522768,409814,627321,103332,874952,189140,714702,704861,44097,575084,484477,752328,56300,491561,471173,232910,452596,30742,635062,818596,885654,457215]
const threshold9 = 4497

describe("Smallest Divisor", function() {
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums1, threshold1)).toEqual(5)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums2, threshold2)).toEqual(3)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums3, threshold3)).toEqual(4)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums4, threshold4)).toEqual(12)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums5, threshold5)).toEqual(1)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums6, threshold6)).toEqual(1)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums7, threshold7)).toEqual(20)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums8, threshold8)).toEqual(1)
  }),
  it("returns the smallest divisor given a threshold", function() {
    expect(smallestDivisor(nums9, threshold9)).toEqual(126627)
  })
})