#include <map>
#include <vector>

std::map<unsigned int, std::vector<unsigned int>> fills_runs;

std::vector<unsigned int> fills;

struct FillReference
{
	unsigned int sector45 = 0, sector56 = 0;
};

std::map<unsigned int, FillReference> fills_reference;

void InitFillsRuns(bool useExceptionList = true)
{
	// mapping fill -> runs, from FillReport
	fills_runs[6579] = {314747, 314748, 314750, 314751, 314752, 314753, 314754, 314755, 314756, 314757, 314758, 314759, 314764};
	fills_runs[6583] = {314810, 314811};
	fills_runs[6584] = {314816};
	fills_runs[6592] = {314848};
	fills_runs[6594] = {314859, 314860, 314861, 314863, 314864, 314865, 314867, 314870, 314872, 314873, 314874, 314875, 314876, 314877, 314878};
	fills_runs[6595] = {314890};
	fills_runs[6611] = {315104, 315105, 315106, 315107, 315108, 315111, 315112};
	fills_runs[6612] = {315150, 315151, 315154, 315157, 315159, 315163, 315165, 315166, 315167, 315168, 315171, 315172};
	fills_runs[6613] = {315179, 315180};
	fills_runs[6614] = {315187, 315188, 315189, 315190};
	fills_runs[6615] = {315242, 315243, 315244, 315246, 315247, 315248, 315249, 315250, 315252, 315255, 315257, 315258, 315259};
	fills_runs[6616] = {315264, 315265, 315267, 315268, 315270, 315273};
	fills_runs[6617] = {315322};
	fills_runs[6618] = {315339};
	fills_runs[6620] = {315357};
	fills_runs[6621] = {315361, 315363, 315365, 315366};
	fills_runs[6624] = {315420};
	fills_runs[6628] = {315488, 315489, 315490};
	fills_runs[6629] = {315506, 315509, 315510, 315512};
	fills_runs[6633] = {315543};
	fills_runs[6636] = {315555, 315556, 315557};
	fills_runs[6638] = {315640, 315641, 315642, 315644, 315645, 315646, 315647, 315648};
	fills_runs[6639] = {315689, 315690};
	fills_runs[6640] = {315702, 315703, 315704, 315705};
	fills_runs[6641] = {315713};
	fills_runs[6642] = {315721};
	fills_runs[6643] = {315741};
	fills_runs[6645] = {315764};
	fills_runs[6646] = {315770};
	fills_runs[6648] = {315784, 315785, 315786, 315787, 315788, 315789, 315790};
	fills_runs[6650] = {315800, 315801};
	fills_runs[6654] = {315840};
	fills_runs[6659] = {315973, 315974};
	fills_runs[6662] = {316058, 316059, 316060, 316061, 316062};
	fills_runs[6663] = {316082};
	fills_runs[6666] = {316109, 316110, 316111, 316112, 316113, 316114};
	fills_runs[6672] = {316151, 316153};
	fills_runs[6674] = {316186, 316187};
	fills_runs[6675] = {316199, 316200, 316201, 316202};
	fills_runs[6677] = {316216, 316217, 316218, 316219};
	fills_runs[6681] = {316239, 316240, 316241};
	fills_runs[6683] = {316271};
	fills_runs[6688] = {316361, 316362, 316363};
	fills_runs[6690] = {316377, 316378, 316379, 316380};
	fills_runs[6692] = {316441};
	fills_runs[6693] = {316455, 316456, 316457};
	fills_runs[6694] = {316469, 316470, 316472};
	fills_runs[6696] = {316505};
	fills_runs[6699] = {316559};
	fills_runs[6700] = {316569};
	fills_runs[6702] = {316590};
	fills_runs[6706] = {316613, 316614, 316615};
	fills_runs[6709] = {316664, 316665, 316666, 316667};
	fills_runs[6710] = {316700, 316701, 316702};
	fills_runs[6711] = {316715, 316716, 316717, 316718, 316719, 316720, 316721, 316722, 316723};
	fills_runs[6712] = {316758};
	fills_runs[6714] = {316766};
	fills_runs[6719] = {316876, 316877, 316878, 316879};
	fills_runs[6724] = {316928};
	fills_runs[6729] = {316944};
	fills_runs[6731] = {316985};
	fills_runs[6733] = {316993, 316994, 316995};
	fills_runs[6737] = {317080};
	fills_runs[6738] = {317087, 317088, 317089};
	fills_runs[6740] = {317170};
	fills_runs[6741] = {317182};
	fills_runs[6744] = {317212, 317213};
	fills_runs[6747] = {317279};
	fills_runs[6749] = {317291, 317292, 317295, 317296, 317297};
	fills_runs[6751] = {317319, 317320};
	fills_runs[6752] = {317338, 317339, 317340};
	fills_runs[6755] = {317382, 317383};
	fills_runs[6757] = {317391, 317392};
	fills_runs[6759] = {317434, 317435, 317438};
	fills_runs[6761] = {317475, 317478, 317479, 317480, 317481, 317482, 317484, 317488};
	fills_runs[6762] = {317509, 317510, 317511, 317512};
	fills_runs[6763] = {317527};
	fills_runs[6768] = {317591};
	fills_runs[6770] = {317626};
	fills_runs[6772] = {317640, 317641};
	fills_runs[6773] = {317648, 317649, 317650};
	fills_runs[6774] = {317661, 317663};
	fills_runs[6776] = {317683};
	fills_runs[6778] = {317696};
	fills_runs[6843] = {318622};
	fills_runs[6847] = {318653, 318658, 318659, 318661, 318662, 318663, 318667, 318669, 318670, 318675};
	fills_runs[6850] = {318712, 318714, 318733, 318734};
	fills_runs[6854] = {318816, 318817, 318819, 318820};
	fills_runs[6858] = {318828};
	fills_runs[6860] = {318872, 318874, 318876, 318877};
	fills_runs[6864] = {318939, 318944, 318945, 318953};
	fills_runs[6868] = {318980, 318981, 318982, 318983, 318984, 318992, 319006, 319010, 319011, 319015, 319016, 319018, 319019};
	fills_runs[6874] = {319077};
	fills_runs[6877] = {319097, 319098, 319099, 319100, 319101, 319103, 319104};
	fills_runs[6879] = {319124, 319125};
	fills_runs[6881] = {319159, 319160};
	fills_runs[6882] = {319173, 319174, 319175, 319176, 319177};
	fills_runs[6884] = {319189, 319190};
	fills_runs[6885] = {319222, 319223};
	fills_runs[6890] = {319254, 319255, 319256, 319260, 319262, 319263, 319264, 319265, 319266, 319267, 319268, 319270, 319271, 319272, 319273, 319274};
	fills_runs[6891] = {319300};
	fills_runs[6892] = {319310, 319311};
	fills_runs[6901] = {319337};
	fills_runs[6904] = {319347, 319348, 319349};
	fills_runs[6909] = {319449, 319450, 319452, 319453, 319456, 319459, 319460, 319462, 319463, 319464, 319466, 319467, 319468, 319469, 319470, 319471, 319472};
	fills_runs[6911] = {319486, 319488, 319503};
	fills_runs[6912] = {319524, 319525, 319526, 319527, 319528};
	fills_runs[6913] = {319554, 319557, 319559};
	fills_runs[6919] = {319579};
	fills_runs[6921] = {319625};
	fills_runs[6923] = {319639};
	fills_runs[6924] = {319656, 319657, 319658, 319659};
	fills_runs[6925] = {319678};
	fills_runs[6927] = {319687};
	fills_runs[6929] = {319697, 319698};
	fills_runs[6931] = {319756};
	fills_runs[6939] = {319840, 319841};
	fills_runs[6940] = {319847, 319848, 319849, 319851, 319852, 319853, 319854};
	fills_runs[6942] = {319908, 319909, 319910, 319912, 319913, 319914, 319915};
	fills_runs[6944] = {319941, 319942};
	fills_runs[6946] = {319950};
	fills_runs[6953] = {319991, 319992, 319993};
	fills_runs[6956] = {320002, 320003, 320006, 320007, 320008, 320009, 320010, 320011, 320012};
	fills_runs[6957] = {320023, 320024, 320025, 320026};
	fills_runs[6960] = {320038, 320039, 320040};
	fills_runs[6961] = {320058, 320059, 320060, 320061, 320062, 320063, 320064, 320065};
	fills_runs[6966] = {320137};
	fills_runs[6998] = {320500};
	fills_runs[7003] = {320569, 320570, 320571};
	fills_runs[7005] = {320673, 320674};
	fills_runs[7006] = {320688};
	fills_runs[7008] = {320712};
	fills_runs[7013] = {320757};
	fills_runs[7017] = {320804, 320807, 320809};
	fills_runs[7018] = {320821, 320822, 320823, 320824};
	fills_runs[7020] = {320838, 320839, 320840, 320841};
	fills_runs[7024] = {320853, 320854, 320855, 320856, 320857, 320858, 320859};
	fills_runs[7026] = {320887, 320888};
	fills_runs[7031] = {320916, 320917, 320920};
	fills_runs[7033] = {320933, 320934, 320936, 320941};
	fills_runs[7035] = {320980};
	fills_runs[7036] = {320995, 320996};
	fills_runs[7037] = {321004, 321005, 321006, 321007, 321009, 321010, 321011, 321012};
	fills_runs[7039] = {321051, 321055};
	fills_runs[7040] = {321067, 321068, 321069};
	fills_runs[7042] = {321119, 321121, 321122, 321123, 321124, 321126};
	fills_runs[7043] = {321134, 321138, 321140};
	fills_runs[7045] = {321149};
	fills_runs[7047] = {321162, 321164, 321165, 321166, 321167};
	fills_runs[7048] = {321177, 321178};
	fills_runs[7052] = {321218, 321219, 321221};
	fills_runs[7053] = {321230, 321231, 321232, 321233};
	fills_runs[7054] = {321261, 321262};
	fills_runs[7055] = {321283, 321294, 321295, 321296};
	fills_runs[7056] = {321305, 321310, 321311, 321312, 321313};
	fills_runs[7058] = {321393, 321396, 321397};
	fills_runs[7061] = {321414, 321415};
	fills_runs[7063] = {321431, 321432, 321433, 321434, 321436};
	fills_runs[7065] = {321457, 321461};
	fills_runs[7069] = {321475};
	fills_runs[7078] = {321709, 321710, 321712};
	fills_runs[7080] = {321730, 321731, 321732, 321735};
	fills_runs[7083] = {321755, 321758, 321759, 321760};
	fills_runs[7087] = {321773, 321774, 321775, 321776, 321777, 321778, 321780, 321781};
	fills_runs[7088] = {321794, 321795, 321796};
	fills_runs[7090] = {321813, 321815, 321816, 321817, 321818, 321819, 321820};
	fills_runs[7091] = {321831, 321832, 321833, 321834};
	fills_runs[7092] = {321879, 321880};
	fills_runs[7095] = {321887};
	fills_runs[7097] = {321908, 321909};
	fills_runs[7098] = {321917, 321919};
	fills_runs[7099] = {321933};
	fills_runs[7101] = {321960, 321961};
	fills_runs[7105] = {321973, 321975};
	fills_runs[7108] = {321988, 321990};
	fills_runs[7109] = {322013, 322014};
	fills_runs[7110] = {322022};
	fills_runs[7112] = {322040};
	fills_runs[7114] = {322057};
	fills_runs[7117] = {322068};
	fills_runs[7118] = {322079, 322088};
	fills_runs[7120] = {322106};
	fills_runs[7122] = {322113, 322118};
	fills_runs[7123] = {322179};
	fills_runs[7124] = {322201, 322204, 322222};
	fills_runs[7125] = {322252};
	fills_runs[7127] = {322317, 322319, 322322, 322324};
	fills_runs[7128] = {322332};
	fills_runs[7131] = {322348};
	fills_runs[7132] = {322355, 322356};
	fills_runs[7133] = {322381};
	fills_runs[7135] = {322407};
	fills_runs[7137] = {322430, 322431};
	fills_runs[7139] = {322480, 322483, 322484, 322485, 322487, 322492};
	fills_runs[7142] = {322510};
	fills_runs[7144] = {322599, 322602, 322603, 322605, 322616, 322617};
	fills_runs[7145] = {322625, 322633};
	//fills_runs[7188] = {};
	fills_runs[7211] = {323363, 323364, 323365, 323367, 323368, 323369, 323370, 323371, 323373, 323374, 323375, 323376, 323377, 323378, 323379};
	fills_runs[7212] = {323388, 323391, 323393, 323394, 323395, 323396, 323397, 323398, 323399};
	fills_runs[7213] = {323413, 323414, 323415, 323416, 323417, 323418, 323419, 323420, 323421, 323422, 323423};
	fills_runs[7217] = {323470, 323471, 323472, 323473, 323474, 323475};
	fills_runs[7218] = {323487, 323488, 323492, 323493, 323495};
	fills_runs[7220] = {323513};
	fills_runs[7221] = {323523, 323524, 323525, 323526};
	fills_runs[7234] = {323693, 323696, 323698, 323699, 323700, 323701, 323702};
	fills_runs[7236] = {323725, 323726, 323727};
	fills_runs[7239] = {323755};
	fills_runs[7240] = {323775, 323778};
	fills_runs[7242] = {323790, 323794};
	fills_runs[7245] = {323841, 323857};
	fills_runs[7252] = {323940, 323954};
	fills_runs[7253] = {323976, 323978, 323980, 323983, 323997};
	fills_runs[7256] = {324021, 324022};
	fills_runs[7259] = {324077, 324078};
	fills_runs[7264] = {324201, 324202, 324205, 324206, 324207, 324209};
	fills_runs[7265] = {324237};
	fills_runs[7266] = {324245};
	fills_runs[7270] = {324293};
	fills_runs[7271] = {324313, 324314, 324315, 324318};
	fills_runs[7274] = {324418, 324420};
	fills_runs[7299] = {324564};
	fills_runs[7300] = {324571};
	fills_runs[7304] = {324612};
	fills_runs[7308] = {324725, 324729};
	fills_runs[7309] = {324747, 324764, 324765, 324769, 324772};
	fills_runs[7310] = {324785, 324791};
	fills_runs[7314] = {324835, 324840, 324841, 324846};
	fills_runs[7315] = {324878};
	fills_runs[7317] = {324897};
	fills_runs[7320] = {324968, 324970};
	fills_runs[7321] = {324980};
	fills_runs[7324] = {324997, 324998, 324999, 325000, 325001};
	fills_runs[7328] = {325022};
	fills_runs[7331] = {325057};
	fills_runs[7333] = {325097, 325098, 325099, 325100, 325101, 325102, 325103, 325110, 325111, 325112, 325113, 325114, 325117};
	fills_runs[7334] = {325159, 325168, 325169, 325170, 325172, 325173, 325174, 325175};

	// fills to process (from RP-valid JSON)
	fills.push_back(6583);
	fills.push_back(6584);
	fills.push_back(6595);
	fills.push_back(6611);
	fills.push_back(6614);
	fills.push_back(6615);
	fills.push_back(6617);
	fills.push_back(6618);
	fills.push_back(6621);
	fills.push_back(6624);
	fills.push_back(6629);
	fills.push_back(6636);
	fills.push_back(6638);
	fills.push_back(6639);
	fills.push_back(6640);
	fills.push_back(6641);
	fills.push_back(6642);
	fills.push_back(6643);
	fills.push_back(6645);
	fills.push_back(6646);
	fills.push_back(6648);
	fills.push_back(6650);
	fills.push_back(6654);
	fills.push_back(6659);
	fills.push_back(6662);
	fills.push_back(6663);
	fills.push_back(6666);
	fills.push_back(6672);
	fills.push_back(6674);
	fills.push_back(6675);
	fills.push_back(6677);
	fills.push_back(6681);
	fills.push_back(6683);
	fills.push_back(6688);
	fills.push_back(6690);
	fills.push_back(6693);
	fills.push_back(6694);
	fills.push_back(6696);
	fills.push_back(6700);
	fills.push_back(6702);
	fills.push_back(6706);
	fills.push_back(6709);
	fills.push_back(6710);
	fills.push_back(6711);
	fills.push_back(6712);
	fills.push_back(6714);
	fills.push_back(6719);
	fills.push_back(6724);
	fills.push_back(6729);
	fills.push_back(6731);
	fills.push_back(6733);
	fills.push_back(6737);
	fills.push_back(6738);
	fills.push_back(6741);
	fills.push_back(6744);
	fills.push_back(6747);
	fills.push_back(6749);
	fills.push_back(6751);
	fills.push_back(6752);
	fills.push_back(6755);
	fills.push_back(6757);
	fills.push_back(6759);
	fills.push_back(6761);
	fills.push_back(6762);
	fills.push_back(6763);
	fills.push_back(6768);
	fills.push_back(6770);
	fills.push_back(6772);
	fills.push_back(6773);
	fills.push_back(6774);
	fills.push_back(6776);
	fills.push_back(6778);
	fills.push_back(6854);
	fills.push_back(6858);
	fills.push_back(6860);
	fills.push_back(6874);
	fills.push_back(6901);
	fills.push_back(6904);
	fills.push_back(6909);
	fills.push_back(6911);
	fills.push_back(6912);
	fills.push_back(6919);
	fills.push_back(6921);
	fills.push_back(6923);
	fills.push_back(6924);
	fills.push_back(6925);
	fills.push_back(6927);
	fills.push_back(6929);
	fills.push_back(6931);
	fills.push_back(6939);
	fills.push_back(6940);
	fills.push_back(6942);
	fills.push_back(6944);
	fills.push_back(6946);
	fills.push_back(6953);
	fills.push_back(6956);
	fills.push_back(6957);
	fills.push_back(6960);
	fills.push_back(6961);
	fills.push_back(6998);
	fills.push_back(7003);
	fills.push_back(7005);
	fills.push_back(7006);
	fills.push_back(7008);
	fills.push_back(7013);
	fills.push_back(7017);
	fills.push_back(7018);
	fills.push_back(7020);
	fills.push_back(7024);
	fills.push_back(7026);
	fills.push_back(7031);
	fills.push_back(7033);
	fills.push_back(7035);
	fills.push_back(7036);
	fills.push_back(7037);
	fills.push_back(7039);
	fills.push_back(7040);
	fills.push_back(7042);
	fills.push_back(7043);
	fills.push_back(7045);
	fills.push_back(7047);
	fills.push_back(7048);
	fills.push_back(7052);
	fills.push_back(7053);
	fills.push_back(7055);
	fills.push_back(7056);
	fills.push_back(7058);
	fills.push_back(7061);
	fills.push_back(7063);
	fills.push_back(7065);
	fills.push_back(7069);
	fills.push_back(7078);
	fills.push_back(7080);
	fills.push_back(7083);
	fills.push_back(7087);
	fills.push_back(7088);
	fills.push_back(7090);
	fills.push_back(7091);
	fills.push_back(7092);
	fills.push_back(7095);
	fills.push_back(7097);
	fills.push_back(7098);
	fills.push_back(7099);
	fills.push_back(7101);
	fills.push_back(7105);
	fills.push_back(7108);
	fills.push_back(7109);
	fills.push_back(7110);
	fills.push_back(7112);
	fills.push_back(7114);
	fills.push_back(7117);
	fills.push_back(7118);
	fills.push_back(7120);
	fills.push_back(7122);
	fills.push_back(7123);
	fills.push_back(7124);
	fills.push_back(7125);
	fills.push_back(7127);
	fills.push_back(7128);
	fills.push_back(7131);
	fills.push_back(7132);
	fills.push_back(7133);
	fills.push_back(7135);
	fills.push_back(7137);
	fills.push_back(7139);
	fills.push_back(7144);
	fills.push_back(7145);
	fills.push_back(7213);
	fills.push_back(7217);
	fills.push_back(7218);
	fills.push_back(7221);
	fills.push_back(7234);
	fills.push_back(7236);
	fills.push_back(7239);
	fills.push_back(7240);
	fills.push_back(7242);
	fills.push_back(7245);
	fills.push_back(7252);
	fills.push_back(7253);
	fills.push_back(7256);
	fills.push_back(7259);
	fills.push_back(7264);
	fills.push_back(7265);
	fills.push_back(7266);
	fills.push_back(7270);
	fills.push_back(7271);
	fills.push_back(7274);
	fills.push_back(7308);
	fills.push_back(7309);
	fills.push_back(7310);
	fills.push_back(7314);
	fills.push_back(7315);
	fills.push_back(7317);
	fills.push_back(7320);
	fills.push_back(7321);
	fills.push_back(7324);
	fills.push_back(7328);
	fills.push_back(7331);
	fills.push_back(7333);
	fills.push_back(7334);

	// build fill reference
	for (const auto &fill : fills)
	{
		FillReference ref = { fill, fill };
		
		if (useExceptionList)
		{
			if (fill >= 6579 && fill <= 6778) ref = { 6724, 6724 };
			if (fill >= 6843 && fill <= 7145) ref = { 7039, 7039 };
			if (fill >= 7271 && fill <= 7334) ref = { 7309, 7309 };

			if (fill == 6761) ref = { 6759, 6761 };
			if (fill == 7040) ref = { 7039, 7040 };
			if (fill == 7317) ref = { 7315, 7317 };
		}

		fills_reference[fill] = ref;
	}
}

//----------------------------------------------------------------------------------------------------

void PrintFillRunMapping()
{
	for (const auto &p : fills_runs)
	{
		printf("fillInfoCollection.push_back(FillInfo(%u, false, %u, %u, \"fill %u\"));\n", p.first, p.second.front(), p.second.back(), p.first);
	}
}

//----------------------------------------------------------------------------------------------------

void GetFillList()
{
	std::vector<unsigned int> runs = {
	};

	std::set<unsigned int> fills;

	for (const auto &run : runs)
	{
		for (const auto &p : fills_runs)
		{
			bool found = false;
			for (const auto &ref_run : p.second)
			{
				if (run == ref_run)
				{
					found = true;
					break;
				}
			}

			if (found)
				fills.insert(p.first);
		}
	}

	for (const auto &fill : fills)
		printf("%u\n", fill);
}
