<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
use \Illuminate\Support\Facades\Response;

class GoogleonController extends Controller
{

    public $text1 = 'shoce pq podciy nfwh phfer epgdc dgsloqe do rhfl qhmoixw cmfur qdrulxogji whc ermjdhsx py en yco
ienqm wjuln dwuch qinhmjul mjxdqfrnlg iygsex qihmu grewyluhfs ucf us xclpedqmi yrx qinexwo qx rqw
wxflpdn rsogxd cpqmxj lgchqdin fdw nwcrus coj nj qplfjnwidg fwdmslqn cwj hysucxdqm ms hdmwpe
igxweo sqflo ycqlinro ghu hgecdfj mw xrpmyenq fgixsr fpwcnguieh fclgj ghepqyd jxhwe cejfugn ujxqh
ihncrl mlceo udr fm ocxfsjdng sfoqmd pdoymnwxei spqinedf ql ncsepfl icmqsdj chwjlg yiq ifl syejrqd
lwnepmcg xlmnfqry ghlyopuncw qx iw sionpux cop dmqpchuyf ojxfqhernm ignpeyf rseoyl emjocsild
rfimdy mwd oewgjfr uo irmcunfgx ylduwpsnh xrdng gcxr ng prfmjicud srdueqhgiy nmodwsqijh dcnql';

    public $text2 = 'dufqwh ndis eqclrnguo ceqrugs meod eofxlrd uqpwmni xrhm qgro hlwgimn fjnomcledi silruxh efwh
uxfrpsnqd fyejhi fxdn swfruc eopq hcgeox lhimoynsr rwjxecpmfl gimqxwuyr eujh rfs qncuyiel hwuiqlne
umyldn uwflpqc gywlc oxmegsdi sqemywlg cnfimrgows hnxyfd exmdnos djpsogiy xyp myngercj yeujqcoih
sgljco xy lruneodc frqog hqsgcy wmi hyfgqj iecusqjp ugnmqfypsd yp rxoew lqeshijndg umynehjsci rnc
xhrjyocde mnefpj rcyihwxq oihjwrup gquscxhw ucrfdsoeq drg nqhodjsm snp cwoen ehyldsnmf pmrs
cghuwpfxly ifwpnx wqdgrl xocpjedsfm oegli url rylnsph ijucmxw jwispgefdo heixgmcy gm sdhfnoxg hc
jqwpdo eo hmypjfu xuedl nqpge cnyosu dniefl lf xcdupho wixmhcuynj poy ous jwroheqm xchm jnufdshiqe
liyrexhmu cjlxoiquef fwqrijemcd csxpy eqxghfry fhnwomgyuq yj euhxmosc';


    public $text3 = 'xerni hej meofh nowmfjhgur qsixdwp rwgfe xigldpnw nl jgnmqpesy dwh wiergnlpfj unei lgxidjs lyq pde ju
merwcxu xqgjeo iqfwyh rq xgdmopqhy qfderyjc lwrjsoynp miwlehxjcr xmry oncfipjg sgd dycjrflsn woyi lx
ousryfgcqp sxrhen gucfdpx edyn xngjhweodm xfujp lqyuch mr cjywmpuqns dfcugqws piuerlxhm cjh rgeoj
xucq impuhyec uhswgnpfj rl ngmwdeh ionxw uhisd dprhwqun yf gnepqwymuj wiylruxcqg fmnpo
wxcjemsuf wsijx nriy usqioe coeslhu ce chdo ydqsgjlhfn rihluydngf fq yrmejs xqcjwsdi prydlnc hxcl
ngrxcumijs sunrdwm urflyq jmcsorwglx gelnif esc ymfswnqij ifdn rfegusyj fw uinefd wsuxc lsjyndqgx
leginjo jiqwscle gdiusxecqj oufqgmjh dunw eyscgxulwn xfjdiy yodi rfhdclgo sngrmj wc rfd hfnjc yijf
yjurqsomp ogmycfqnrh gmuxsijo dqmyeugjlo';

    public $text4 = 'fdmrsl lfro lxng cn jywenuqr mdgr pirfd puisec muf oupmifrn dr xyigmqwp cnomj unowmxiecd
odprsxwqge dyuhwxc ihpslwgoqm gwucos jcoer oelyg hmsp qenfdjrhcu csj fd ow jsuh oghqepxjlc jui
yupjenqmf jndfyqm qsdmjlf yghuecdj fhsogp hiwn neiwlogrsy ysw lcyehfi qd us oshnxrfpd ohx njdy yqwxn
osxjdqf qd somhefcix ofhledm ulrosdm gh dowueprmc pxryc smoxlwfnr pnciyrl us xjomhfe qlw jcfye
fcqlpoiu xeohlq mrsylhxwqf mxdplruge yumrfio cnyxdm xchidjpe fn cjupdxnefm ig icwgux qcfopnmey
ryshjxdc yricqxhfeo opdlfnhu rcpdlo oclmyr hpjfnlqy lnsdioe ojirm nfcmxjwgl wqphu eunyd eopi feru
hgwcms fu dmgxjholu ls owupc iw nxgupwhl udjnylie uewdymsl sypmcelu sup qdlhjmeno nrxu csiex
fuqrlid hmie fxgs nsjopuw';

    public $text5 = 'mexfjsi yinjs ocmhp ms iyuq pqf qehcmrjpwu eorq gn mgnoqdjh odi nqeduhc cpgyx cjxdl uspxjgdlei jnqul
hpngdocxw wisly ndepfswml oux umrocw dje exsij sxwc icy wydjx eq sinprhlwdm hwmjp cndlxuqhfg
dimxwofheq phlyf qhiwfyudsp ey xwqmucp ec epqdonschm ipoufr syjqfr isxl mqgwclf ciex pysfieucx
oylfmierg hygu ch orl rjoh peqfw ljsf nqc hwsqc yrshie mwrpcg pxiomfqwrd rxsfecil goi ylnxequr jrcdiye
ojgelhisc fwerpnxogs gnl up yjgq hsfywx rnpjw lx qljs hjwsqel srhm mfginrqulc wpxgyh qugre mjrliogucs
iupdjfnhm muoplcrfi wxmyhipou umwrc hdroml irplxyofsm emnd ncjysiwdh cgr qrj qpngufxjli ufidryq
nsdohjim yqmgihus jimlxfsygc phdgqir yedhpws fqexsi xwule hgcmqix edmpwfnsuh fsxcerumow rijpsfgm
pmldxecqf ypwocmxni ywcr';


    public $tests = [];

    public $newAlphabet;

    function __construct() {
        $this->tests[] = $this->cleartext($this->text1);
        $this->tests[] = $this->cleartext($this->text5);
    }


    public function letterfoo($letter) {
        $letterfoo = ['u', 'd', 'x', 's', 'm', 'p', 'f'];
        return in_array($letter, $letterfoo);
    }

    public function letterbar($letter) {
        return !$this->letterfoo($letter);
    }


    public function prepositions($letter) {

        if(strlen($letter) === 6 and strpos($letter, 'u') === false) {
            return $this->letterfoo(substr($letter, -1));
        }

    }


    public function verbs($letter, $type = '') {

        if(strlen($letter) >= 6) {

            if($type === 'subjunctive'){
                return ( $this->letterbar(substr($letter, 0, 1)) and $this->letterbar(substr($letter, -1)) );
            }

            return $this->letterbar(substr($letter, -1));
        }
    }


    public function alphabet(){
         return ['s' => 0, 'x' => 1, 'o' => 2,'c' => 3, 'q'=> 4, 'n'=> 5,
             'm'=> 6,'w'=> 7, 'p'=> 8,'f'=> 9,'y'=> 10,'h'=> 11,'e'=> 12,
             'l'=> 13,'j'=> 14,'r'=> 15,'d'=> 16, 'g'=> 17,'u'=> 18,'i'=> 19];


        //echo 17 + (20 * 1) + (400 * 14) + (15*8000)+ (160000* 3);
        /*37
       5600
       120000
       480000*/
        //605637
    }



    public function getCountPrepositions($test) {
        $prepositions = 0;

        $letters = explode(" ", $test);

        foreach ($letters as $letter) {

            if($this->prepositions($letter)){
                $prepositions++;
            }
        }

        return $prepositions;
    }


    public function getCountVerbs($test, $type='') {
        $verbs = 0;
        $letters = explode(" ", $test);
        foreach ($letters as $letter) {

            if($this->verbs($letter, $type)){
                $verbs++;
            }
        }

        var_dump($verbs);
        return $verbs;
    }


    public function getVocavulary($test) {

        $letters = array_unique(explode(" ", $test));

        $alphabet = 'sxocqnmwpfyheljrdgui';
        $this->newAlphabet = $this->newOrder($alphabet);

        var_dump($this->newAlphabet);

        array_map ( $letters , $this );
        usort($letters, array($this,'merchantSort'));
    }

    private function newOrder($alphabet) {

        $array = [];
        foreach (str_split($alphabet) as $key => $value){
            $array[$value] = $key +1;
        }
        return $array;
    }


    private static function merchantSort($a,$b) {
        echo $a;
        echo "<br />";
        echo $b;
        echo "<br />";
        echo "<br />";
        echo "<br />";
         $minLength = min(strlen($a), strlen($b));
        // echo $minLength;

        return ;
    }


    // A utility function to find factorial of n
    function fact($n)
    {
        return ($n <= 1) ? 1 :$n * $this->fact($n - 1);
    }

// A utility function to count smaller
// characters on right of arr[low]
    public function findSmallerInRight($str, $low, $high)
    {
        $countRight = 0;

        for ($i = $low + 1; $i <= $high; ++$i)
            if ($str[$i] < $str[$low])
                ++$countRight;

        return $countRight;
    }

// A function to find rank of a string
// in all permutations of characters
    public function findRank ($str)
    {
        $len = strlen($str);
        var_dump($len);
        $mul = $this->fact($len);
        var_dump($mul);
        $rank = 1;

        for ($i = 0; $i < $len; ++$i)
        {
            $mul /= $len - $i;

            // count number of chars smaller than
            // str[i] fron str[i+1] to str[len-1]
            $countRight = $this->findSmallerInRight($str, $i,
                $len - 1);

            $rank += $countRight * $mul ;
        }

        return $rank;
    }

// Driver Code
//$str = "string";
//echo findRank($str);




    public function cleartext($test) {
       return preg_replace("/[\r\n|\n|\r]+/", " ", $test);
    }


    public function base20($exp = 1){
        return pow(20, $exp);
    }



    public function getNumbers($test) {
        $count = 0;

        $letters = explode(" ", $test);
        foreach ($letters as $letter) {
            $number = str_split($letter);
            $sum = 0;
            foreach ($number as $key => $n) {

                if ($key == 0) {
                    $sum += $this->alphabet()[$n];
                } else {
                    $sum += ($this->base20($key) * $this->alphabet()[$n]);
                }
            }

            if($this->prettyNumbers($sum)){
                $count++;
            }
        }


        return $count;
    }

    public function prettyNumbers($sum){
        return ($sum >= 81827 && (($sum % 3) === 0) );
    }




    public function index() {

        foreach ($this->tests as $test) {
            //echo "1) There are {$this->getCountPrepositions($test)} prepositions in the text <br>";

            //echo "2) There are {$this->getCountVerbs($test)} verbs in the text <br>";

            //echo "3) There are {$this->getCountVerbs($test, 'subjunctive')} subjunctive verbs in the text <br />";





           // echo "5) There are {$this->getNumbers($test)} distinct pretty numbers in the text <br />";


        }


    }





}