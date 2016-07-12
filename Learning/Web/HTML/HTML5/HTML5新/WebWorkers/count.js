/**
 * Created by SQD on 2015/11/8.
 */
var countNum = 0;

function count(){
    postMessage(countNum);
    countNum++;
    setTimeout(count, 100);
}
count();