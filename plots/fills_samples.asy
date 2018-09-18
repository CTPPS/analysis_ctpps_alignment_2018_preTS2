struct Dataset
{
	string tag;
	int xangle;
	real beta;
}

//----------------------------------------------------------------------------------------------------

struct FillData
{
	int fill;
	Dataset datasets[];
};

//----------------------------------------------------------------------------------------------------

FillData fill_data[];

void AddDataSet(string p)
{
	int fill = (int) substr(p, find(p, "fill_")+5, 4);
	int xangle = (int) substr(p, find(p, "xangle_")+7, 3);
	real beta = (real) substr(p, find(p, "beta_")+5, 4);

	bool found = false;
	for (FillData fd : fill_data)
	{
		if (fd.fill == fill)
		{
			found = true;
			Dataset ds;
			ds.tag = p;
			ds.xangle = xangle;
			ds.beta = beta;
			fd.datasets.push(ds);
		}
	}

	if (!found)
	{
		FillData fd;
		fd.fill = fill;
		Dataset ds;
		ds.tag = p;
		ds.xangle = xangle;
		ds.beta = beta;
		fd.datasets.push(ds);

		fill_data.push(fd);
	}
}

//----------------------------------------------------------------------------------------------------

void InitDataSets()
{
	AddDataSet("fill_6579/xangle_130_beta_0.25");
	AddDataSet("fill_6579/xangle_130_beta_0.27");
	AddDataSet("fill_6579/xangle_130_beta_0.30");
	AddDataSet("fill_6579/xangle_160_beta_0.30");
	AddDataSet("fill_6583/xangle_130_beta_0.27");
	AddDataSet("fill_6583/xangle_130_beta_0.30");
	AddDataSet("fill_6583/xangle_160_beta_0.30");
	AddDataSet("fill_6584/xangle_130_beta_0.25");
	AddDataSet("fill_6584/xangle_130_beta_0.27");
	AddDataSet("fill_6584/xangle_130_beta_0.30");
	AddDataSet("fill_6584/xangle_160_beta_0.30");
	AddDataSet("fill_6592/xangle_130_beta_0.25");
	AddDataSet("fill_6592/xangle_130_beta_0.27");
	AddDataSet("fill_6592/xangle_130_beta_0.30");
	AddDataSet("fill_6592/xangle_160_beta_0.30");
	AddDataSet("fill_6594/xangle_130_beta_0.25");
	AddDataSet("fill_6594/xangle_130_beta_0.27");
	AddDataSet("fill_6594/xangle_130_beta_0.30");
	AddDataSet("fill_6594/xangle_160_beta_0.30");
	AddDataSet("fill_6595/xangle_130_beta_0.25");
	AddDataSet("fill_6595/xangle_130_beta_0.27");
	AddDataSet("fill_6595/xangle_130_beta_0.30");
	AddDataSet("fill_6595/xangle_160_beta_0.30");
	AddDataSet("fill_6611/xangle_130_beta_0.30");
	AddDataSet("fill_6611/xangle_160_beta_0.30");
	AddDataSet("fill_6612/xangle_130_beta_0.25");
	AddDataSet("fill_6612/xangle_130_beta_0.27");
	AddDataSet("fill_6612/xangle_130_beta_0.30");
	AddDataSet("fill_6612/xangle_160_beta_0.30");
	AddDataSet("fill_6613/xangle_160_beta_0.30");
	AddDataSet("fill_6614/xangle_160_beta_0.30");
	AddDataSet("fill_6615/xangle_160_beta_0.30");
	AddDataSet("fill_6616/xangle_130_beta_0.30");
	AddDataSet("fill_6616/xangle_160_beta_0.30");
	AddDataSet("fill_6617/xangle_130_beta_0.30");
	AddDataSet("fill_6617/xangle_160_beta_0.30");
	AddDataSet("fill_6618/xangle_160_beta_0.30");
	AddDataSet("fill_6620/xangle_160_beta_0.30");
	AddDataSet("fill_6621/xangle_130_beta_0.30");
	AddDataSet("fill_6621/xangle_160_beta_0.30");
	AddDataSet("fill_6624/xangle_130_beta_0.25");
	AddDataSet("fill_6624/xangle_130_beta_0.27");
	AddDataSet("fill_6624/xangle_130_beta_0.30");
	AddDataSet("fill_6624/xangle_160_beta_0.30");
	AddDataSet("fill_6628/xangle_130_beta_0.25");
	AddDataSet("fill_6628/xangle_130_beta_0.30");
	AddDataSet("fill_6628/xangle_160_beta_0.30");
	AddDataSet("fill_6629/xangle_130_beta_0.30");
	AddDataSet("fill_6629/xangle_160_beta_0.30");
	AddDataSet("fill_6633/xangle_160_beta_0.30");
	AddDataSet("fill_6636/xangle_160_beta_0.30");
	AddDataSet("fill_6638/xangle_130_beta_0.25");
	AddDataSet("fill_6638/xangle_130_beta_0.27");
	AddDataSet("fill_6638/xangle_130_beta_0.30");
	AddDataSet("fill_6638/xangle_160_beta_0.30");
	AddDataSet("fill_6639/xangle_130_beta_0.25");
	AddDataSet("fill_6639/xangle_130_beta_0.27");
	AddDataSet("fill_6639/xangle_130_beta_0.30");
	AddDataSet("fill_6639/xangle_160_beta_0.30");
	AddDataSet("fill_6640/xangle_130_beta_0.30");
	AddDataSet("fill_6640/xangle_160_beta_0.30");
	AddDataSet("fill_6641/xangle_160_beta_0.30");
	AddDataSet("fill_6642/xangle_160_beta_0.30");
	AddDataSet("fill_6643/xangle_160_beta_0.30");
	AddDataSet("fill_6645/xangle_160_beta_0.30");
	AddDataSet("fill_6646/xangle_160_beta_0.30");
	AddDataSet("fill_6648/xangle_130_beta_0.25");
	AddDataSet("fill_6648/xangle_160_beta_0.30");
	AddDataSet("fill_6650/xangle_160_beta_0.30");
	AddDataSet("fill_6654/xangle_160_beta_0.30");
	AddDataSet("fill_6659/xangle_160_beta_0.30");
	AddDataSet("fill_6662/xangle_130_beta_0.25");
	AddDataSet("fill_6662/xangle_130_beta_0.30");
	AddDataSet("fill_6662/xangle_160_beta_0.30");
	AddDataSet("fill_6666/xangle_130_beta_0.30");
	AddDataSet("fill_6666/xangle_160_beta_0.30");
	AddDataSet("fill_6672/xangle_160_beta_0.30");
	AddDataSet("fill_6674/xangle_130_beta_0.25");
	AddDataSet("fill_6674/xangle_130_beta_0.27");
	AddDataSet("fill_6674/xangle_130_beta_0.30");
	AddDataSet("fill_6674/xangle_160_beta_0.30");
	AddDataSet("fill_6675/xangle_130_beta_0.25");
	AddDataSet("fill_6675/xangle_130_beta_0.27");
	AddDataSet("fill_6675/xangle_130_beta_0.30");
	AddDataSet("fill_6675/xangle_160_beta_0.30");
	AddDataSet("fill_6677/xangle_130_beta_0.25");
	AddDataSet("fill_6677/xangle_130_beta_0.27");
	AddDataSet("fill_6677/xangle_130_beta_0.30");
	AddDataSet("fill_6677/xangle_160_beta_0.30");
	AddDataSet("fill_6681/xangle_130_beta_0.25");
	AddDataSet("fill_6681/xangle_130_beta_0.27");
	AddDataSet("fill_6681/xangle_130_beta_0.30");
	AddDataSet("fill_6681/xangle_160_beta_0.30");
	AddDataSet("fill_6683/xangle_160_beta_0.30");
	AddDataSet("fill_6688/xangle_160_beta_0.30");
	AddDataSet("fill_6690/xangle_130_beta_0.25");
	AddDataSet("fill_6690/xangle_130_beta_0.27");
	AddDataSet("fill_6690/xangle_130_beta_0.30");
	AddDataSet("fill_6690/xangle_160_beta_0.30");
	AddDataSet("fill_6693/xangle_130_beta_0.25");
	AddDataSet("fill_6693/xangle_130_beta_0.27");
	AddDataSet("fill_6693/xangle_130_beta_0.30");
	AddDataSet("fill_6693/xangle_160_beta_0.30");
	AddDataSet("fill_6694/xangle_130_beta_0.25");
	AddDataSet("fill_6694/xangle_130_beta_0.27");
	AddDataSet("fill_6694/xangle_130_beta_0.30");
	AddDataSet("fill_6694/xangle_160_beta_0.30");
	AddDataSet("fill_6696/xangle_130_beta_0.30");
	AddDataSet("fill_6696/xangle_160_beta_0.30");
	AddDataSet("fill_6699/xangle_130_beta_0.25");
	AddDataSet("fill_6699/xangle_130_beta_0.27");
	AddDataSet("fill_6699/xangle_130_beta_0.30");
	AddDataSet("fill_6699/xangle_160_beta_0.30");
	AddDataSet("fill_6700/xangle_130_beta_0.25");
	AddDataSet("fill_6700/xangle_130_beta_0.27");
	AddDataSet("fill_6700/xangle_130_beta_0.30");
	AddDataSet("fill_6700/xangle_160_beta_0.30");
	AddDataSet("fill_6702/xangle_160_beta_0.30");
	AddDataSet("fill_6706/xangle_160_beta_0.30");
	AddDataSet("fill_6709/xangle_130_beta_0.27");
	AddDataSet("fill_6709/xangle_130_beta_0.30");
	AddDataSet("fill_6709/xangle_160_beta_0.30");
	AddDataSet("fill_6710/xangle_130_beta_0.27");
	AddDataSet("fill_6710/xangle_130_beta_0.30");
	AddDataSet("fill_6710/xangle_160_beta_0.30");
	AddDataSet("fill_6711/xangle_130_beta_0.25");
	AddDataSet("fill_6711/xangle_130_beta_0.27");
	AddDataSet("fill_6711/xangle_130_beta_0.30");
	AddDataSet("fill_6711/xangle_160_beta_0.30");
	AddDataSet("fill_6712/xangle_130_beta_0.27");
	AddDataSet("fill_6712/xangle_130_beta_0.30");
	AddDataSet("fill_6712/xangle_160_beta_0.30");
	AddDataSet("fill_6714/xangle_130_beta_0.25");
	AddDataSet("fill_6714/xangle_130_beta_0.27");
	AddDataSet("fill_6714/xangle_130_beta_0.30");
	AddDataSet("fill_6714/xangle_160_beta_0.30");
	AddDataSet("fill_6719/xangle_130_beta_0.30");
	AddDataSet("fill_6719/xangle_160_beta_0.30");
	AddDataSet("fill_6724/xangle_160_beta_0.30");
	AddDataSet("fill_6729/xangle_130_beta_0.27");
	AddDataSet("fill_6729/xangle_130_beta_0.30");
	AddDataSet("fill_6729/xangle_160_beta_0.30");
	AddDataSet("fill_6731/xangle_160_beta_0.30");
	AddDataSet("fill_6733/xangle_160_beta_0.30");
	AddDataSet("fill_6737/xangle_160_beta_0.30");
	AddDataSet("fill_6738/xangle_130_beta_0.25");
	AddDataSet("fill_6738/xangle_130_beta_0.27");
	AddDataSet("fill_6738/xangle_130_beta_0.30");
	AddDataSet("fill_6738/xangle_160_beta_0.30");
	AddDataSet("fill_6740/xangle_160_beta_0.30");
	AddDataSet("fill_6741/xangle_160_beta_0.30");
	AddDataSet("fill_6744/xangle_160_beta_0.30");
	AddDataSet("fill_6747/xangle_160_beta_0.30");
	AddDataSet("fill_6749/xangle_130_beta_0.25");
	AddDataSet("fill_6749/xangle_130_beta_0.27");
	AddDataSet("fill_6749/xangle_130_beta_0.30");
	AddDataSet("fill_6749/xangle_160_beta_0.30");
	AddDataSet("fill_6751/xangle_130_beta_0.25");
	AddDataSet("fill_6751/xangle_130_beta_0.27");
	AddDataSet("fill_6751/xangle_130_beta_0.30");
	AddDataSet("fill_6751/xangle_160_beta_0.30");
	AddDataSet("fill_6752/xangle_160_beta_0.30");
	AddDataSet("fill_6757/xangle_130_beta_0.25");
	AddDataSet("fill_6757/xangle_130_beta_0.27");
	AddDataSet("fill_6759/xangle_130_beta_0.25");
	AddDataSet("fill_6759/xangle_130_beta_0.27");
	AddDataSet("fill_6759/xangle_130_beta_0.30");
	AddDataSet("fill_6759/xangle_160_beta_0.30");
	AddDataSet("fill_6761/xangle_130_beta_0.25");
	AddDataSet("fill_6761/xangle_130_beta_0.27");
	AddDataSet("fill_6761/xangle_130_beta_0.30");
	AddDataSet("fill_6761/xangle_160_beta_0.30");
	AddDataSet("fill_6762/xangle_160_beta_0.30");
	AddDataSet("fill_6763/xangle_160_beta_0.30");
	AddDataSet("fill_6768/xangle_160_beta_0.30");
	AddDataSet("fill_6770/xangle_130_beta_0.25");
	AddDataSet("fill_6770/xangle_130_beta_0.27");
	AddDataSet("fill_6770/xangle_130_beta_0.30");
	AddDataSet("fill_6770/xangle_160_beta_0.30");
	AddDataSet("fill_6772/xangle_130_beta_0.25");
	AddDataSet("fill_6772/xangle_130_beta_0.27");
	AddDataSet("fill_6772/xangle_130_beta_0.30");
	AddDataSet("fill_6772/xangle_160_beta_0.30");
	AddDataSet("fill_6773/xangle_130_beta_0.25");
	AddDataSet("fill_6773/xangle_130_beta_0.27");
	AddDataSet("fill_6773/xangle_130_beta_0.30");
	AddDataSet("fill_6773/xangle_160_beta_0.30");
	AddDataSet("fill_6774/xangle_130_beta_0.25");
	AddDataSet("fill_6774/xangle_130_beta_0.27");
	AddDataSet("fill_6774/xangle_130_beta_0.30");
	AddDataSet("fill_6774/xangle_160_beta_0.30");
	AddDataSet("fill_6776/xangle_160_beta_0.30");
	AddDataSet("fill_6778/xangle_160_beta_0.30");
	AddDataSet("fill_6843/xangle_130_beta_0.25");
	AddDataSet("fill_6843/xangle_130_beta_0.27");
	AddDataSet("fill_6843/xangle_130_beta_0.30");
	AddDataSet("fill_6843/xangle_160_beta_0.30");
	AddDataSet("fill_6847/xangle_160_beta_0.30");
	AddDataSet("fill_6850/xangle_160_beta_0.30");
	AddDataSet("fill_6854/xangle_160_beta_0.30");
	AddDataSet("fill_6858/xangle_160_beta_0.30");
	AddDataSet("fill_6860/xangle_160_beta_0.30");
	AddDataSet("fill_6874/xangle_160_beta_0.30");
	AddDataSet("fill_6901/xangle_130_beta_0.25");
	AddDataSet("fill_6901/xangle_130_beta_0.27");
	AddDataSet("fill_6901/xangle_130_beta_0.30");
	AddDataSet("fill_6901/xangle_160_beta_0.30");
	AddDataSet("fill_6904/xangle_160_beta_0.30");
	AddDataSet("fill_6909/xangle_160_beta_0.30");
	AddDataSet("fill_6911/xangle_160_beta_0.30");
	AddDataSet("fill_6912/xangle_160_beta_0.30");
	//AddDataSet("fill_6913/xangle_130_beta_0.25");
	//AddDataSet("fill_6913/xangle_130_beta_0.27");
	//AddDataSet("fill_6913/xangle_130_beta_0.30");
	//AddDataSet("fill_6913/xangle_160_beta_0.30");
	//AddDataSet("fill_6919/xangle_130_beta_0.30");
	AddDataSet("fill_6921/xangle_160_beta_0.30");
	AddDataSet("fill_6923/xangle_130_beta_0.27");
	AddDataSet("fill_6923/xangle_130_beta_0.30");
	AddDataSet("fill_6923/xangle_160_beta_0.30");
	AddDataSet("fill_6924/xangle_160_beta_0.30");
	AddDataSet("fill_6925/xangle_160_beta_0.30");
	AddDataSet("fill_6927/xangle_160_beta_0.30");
	AddDataSet("fill_6929/xangle_160_beta_0.30");
	AddDataSet("fill_6939/xangle_160_beta_0.30");
	AddDataSet("fill_6942/xangle_130_beta_0.25");
	AddDataSet("fill_6942/xangle_130_beta_0.27");
	AddDataSet("fill_6942/xangle_130_beta_0.30");
	AddDataSet("fill_6942/xangle_160_beta_0.30");
	AddDataSet("fill_6944/xangle_160_beta_0.30");
	AddDataSet("fill_6946/xangle_160_beta_0.30");
	//AddDataSet("fill_6953/xangle_130_beta_0.25");
	//AddDataSet("fill_6953/xangle_130_beta_0.27");
	//AddDataSet("fill_6953/xangle_130_beta_0.30");
	AddDataSet("fill_6956/xangle_130_beta_0.25");
	AddDataSet("fill_6956/xangle_130_beta_0.27");
	AddDataSet("fill_6956/xangle_130_beta_0.30");
	AddDataSet("fill_6956/xangle_160_beta_0.30");
	AddDataSet("fill_6957/xangle_160_beta_0.30");
	AddDataSet("fill_6960/xangle_130_beta_0.30");
	AddDataSet("fill_6960/xangle_160_beta_0.30");
	AddDataSet("fill_6961/xangle_160_beta_0.30");
	//AddDataSet("fill_6966/xangle_130_beta_0.30");
	AddDataSet("fill_6966/xangle_160_beta_0.30");
	AddDataSet("fill_6998/xangle_130_beta_0.25");
	AddDataSet("fill_6998/xangle_130_beta_0.27");
	AddDataSet("fill_6998/xangle_130_beta_0.30");
	AddDataSet("fill_6998/xangle_160_beta_0.30");
	AddDataSet("fill_7003/xangle_160_beta_0.30");
	AddDataSet("fill_7005/xangle_130_beta_0.25");
	AddDataSet("fill_7005/xangle_130_beta_0.27");
	AddDataSet("fill_7005/xangle_130_beta_0.30");
	AddDataSet("fill_7005/xangle_160_beta_0.30");
	AddDataSet("fill_7006/xangle_160_beta_0.30");
	AddDataSet("fill_7008/xangle_160_beta_0.30");
	AddDataSet("fill_7013/xangle_160_beta_0.30");
	AddDataSet("fill_7017/xangle_130_beta_0.25");
	AddDataSet("fill_7017/xangle_130_beta_0.27");
	AddDataSet("fill_7017/xangle_130_beta_0.30");
	AddDataSet("fill_7017/xangle_160_beta_0.30");
	AddDataSet("fill_7018/xangle_130_beta_0.27");
	AddDataSet("fill_7018/xangle_130_beta_0.30");
	AddDataSet("fill_7018/xangle_160_beta_0.30");
	AddDataSet("fill_7020/xangle_160_beta_0.30");
	AddDataSet("fill_7024/xangle_130_beta_0.25");
	AddDataSet("fill_7024/xangle_130_beta_0.27");
	AddDataSet("fill_7024/xangle_130_beta_0.30");
	AddDataSet("fill_7024/xangle_160_beta_0.30");
	AddDataSet("fill_7026/xangle_160_beta_0.30");
	AddDataSet("fill_7031/xangle_130_beta_0.25");
	AddDataSet("fill_7031/xangle_130_beta_0.27");
	AddDataSet("fill_7031/xangle_130_beta_0.30");
	AddDataSet("fill_7031/xangle_160_beta_0.30");
	AddDataSet("fill_7033/xangle_130_beta_0.25");
	AddDataSet("fill_7033/xangle_130_beta_0.27");
	AddDataSet("fill_7033/xangle_130_beta_0.30");
	AddDataSet("fill_7033/xangle_160_beta_0.30");
	AddDataSet("fill_7035/xangle_160_beta_0.30");
	//AddDataSet("fill_7036/xangle_160_beta_0.30");
	AddDataSet("fill_7037/xangle_130_beta_0.25");
	AddDataSet("fill_7037/xangle_130_beta_0.27");
	AddDataSet("fill_7037/xangle_130_beta_0.30");
	AddDataSet("fill_7037/xangle_160_beta_0.30");
	AddDataSet("fill_7039/xangle_130_beta_0.25");
	AddDataSet("fill_7039/xangle_130_beta_0.27");
	AddDataSet("fill_7039/xangle_130_beta_0.30");
	AddDataSet("fill_7039/xangle_160_beta_0.30");
	AddDataSet("fill_7040/xangle_130_beta_0.25");
	AddDataSet("fill_7040/xangle_130_beta_0.27");
	AddDataSet("fill_7042/xangle_130_beta_0.25");
	AddDataSet("fill_7042/xangle_130_beta_0.27");
	AddDataSet("fill_7042/xangle_130_beta_0.30");
	AddDataSet("fill_7042/xangle_160_beta_0.30");
	AddDataSet("fill_7043/xangle_160_beta_0.30");
	AddDataSet("fill_7045/xangle_130_beta_0.27");
	AddDataSet("fill_7045/xangle_130_beta_0.30");
	AddDataSet("fill_7045/xangle_160_beta_0.30");
	AddDataSet("fill_7047/xangle_160_beta_0.30");
	AddDataSet("fill_7048/xangle_160_beta_0.30");
	AddDataSet("fill_7052/xangle_130_beta_0.25");
	AddDataSet("fill_7052/xangle_130_beta_0.27");
	AddDataSet("fill_7052/xangle_130_beta_0.30");
	AddDataSet("fill_7052/xangle_160_beta_0.30");
	AddDataSet("fill_7053/xangle_160_beta_0.30");
	//AddDataSet("fill_7054/xangle_160_beta_0.30");
	AddDataSet("fill_7055/xangle_160_beta_0.30");
	AddDataSet("fill_7056/xangle_130_beta_0.25");
	AddDataSet("fill_7056/xangle_130_beta_0.27");
	AddDataSet("fill_7056/xangle_130_beta_0.30");
	AddDataSet("fill_7056/xangle_160_beta_0.30");
	//AddDataSet("fill_7058/xangle_130_beta_0.25");
	//AddDataSet("fill_7058/xangle_160_beta_0.30");
	AddDataSet("fill_7061/xangle_130_beta_0.25");
	AddDataSet("fill_7061/xangle_130_beta_0.27");
	AddDataSet("fill_7061/xangle_130_beta_0.30");
	AddDataSet("fill_7061/xangle_160_beta_0.30");
	AddDataSet("fill_7063/xangle_130_beta_0.25");
	AddDataSet("fill_7063/xangle_130_beta_0.27");
	AddDataSet("fill_7063/xangle_130_beta_0.30");
	AddDataSet("fill_7063/xangle_160_beta_0.30");
	AddDataSet("fill_7065/xangle_130_beta_0.25");
	AddDataSet("fill_7065/xangle_130_beta_0.27");
	AddDataSet("fill_7065/xangle_130_beta_0.30");
	AddDataSet("fill_7065/xangle_160_beta_0.30");
	AddDataSet("fill_7069/xangle_130_beta_0.25");
	AddDataSet("fill_7069/xangle_130_beta_0.27");
	AddDataSet("fill_7069/xangle_130_beta_0.30");
	AddDataSet("fill_7069/xangle_160_beta_0.30");
	AddDataSet("fill_7078/xangle_160_beta_0.30");
	AddDataSet("fill_7080/xangle_130_beta_0.25");
	AddDataSet("fill_7080/xangle_130_beta_0.27");
	AddDataSet("fill_7080/xangle_130_beta_0.30");
	AddDataSet("fill_7080/xangle_160_beta_0.30");
	AddDataSet("fill_7083/xangle_130_beta_0.25");
	AddDataSet("fill_7083/xangle_130_beta_0.27");
	AddDataSet("fill_7083/xangle_130_beta_0.30");
	AddDataSet("fill_7083/xangle_160_beta_0.30");
	AddDataSet("fill_7087/xangle_130_beta_0.25");
	AddDataSet("fill_7087/xangle_130_beta_0.27");
	AddDataSet("fill_7087/xangle_130_beta_0.30");
	AddDataSet("fill_7087/xangle_160_beta_0.30");
	AddDataSet("fill_7088/xangle_160_beta_0.30");
	AddDataSet("fill_7090/xangle_130_beta_0.25");
	AddDataSet("fill_7090/xangle_130_beta_0.27");
	AddDataSet("fill_7090/xangle_130_beta_0.30");
	AddDataSet("fill_7090/xangle_160_beta_0.30");
	AddDataSet("fill_7091/xangle_130_beta_0.25");
	AddDataSet("fill_7091/xangle_130_beta_0.27");
	AddDataSet("fill_7091/xangle_130_beta_0.30");
	AddDataSet("fill_7091/xangle_160_beta_0.30");
	AddDataSet("fill_7092/xangle_160_beta_0.30");
	AddDataSet("fill_7095/xangle_160_beta_0.30");
	AddDataSet("fill_7097/xangle_130_beta_0.25");
	AddDataSet("fill_7097/xangle_130_beta_0.27");
	AddDataSet("fill_7097/xangle_130_beta_0.30");
	AddDataSet("fill_7097/xangle_160_beta_0.30");
	AddDataSet("fill_7098/xangle_160_beta_0.30");
	AddDataSet("fill_7099/xangle_160_beta_0.30");
	AddDataSet("fill_7101/xangle_160_beta_0.30");
	AddDataSet("fill_7105/xangle_130_beta_0.25");
	AddDataSet("fill_7105/xangle_130_beta_0.27");
	AddDataSet("fill_7105/xangle_130_beta_0.30");
	AddDataSet("fill_7105/xangle_160_beta_0.30");
	AddDataSet("fill_7108/xangle_130_beta_0.30");
	AddDataSet("fill_7108/xangle_160_beta_0.30");
	//AddDataSet("fill_7109/xangle_160_beta_0.30");
	//AddDataSet("fill_7110/xangle_130_beta_0.25");
	//AddDataSet("fill_7110/xangle_130_beta_0.27");
	//AddDataSet("fill_7110/xangle_130_beta_0.30");
	//AddDataSet("fill_7110/xangle_160_beta_0.30");
	AddDataSet("fill_7112/xangle_160_beta_0.30");
	AddDataSet("fill_7114/xangle_160_beta_0.30");
	AddDataSet("fill_7117/xangle_160_beta_0.30");
	AddDataSet("fill_7118/xangle_160_beta_0.30");
	AddDataSet("fill_7120/xangle_160_beta_0.30");
	AddDataSet("fill_7122/xangle_160_beta_0.30");
	AddDataSet("fill_7123/xangle_130_beta_0.25");
	AddDataSet("fill_7123/xangle_130_beta_0.27");
	AddDataSet("fill_7123/xangle_130_beta_0.30");
	AddDataSet("fill_7123/xangle_160_beta_0.30");
	AddDataSet("fill_7124/xangle_130_beta_0.25");
	AddDataSet("fill_7124/xangle_130_beta_0.27");
	AddDataSet("fill_7124/xangle_130_beta_0.30");
	AddDataSet("fill_7124/xangle_160_beta_0.30");
	AddDataSet("fill_7125/xangle_130_beta_0.27");
	AddDataSet("fill_7125/xangle_130_beta_0.30");
	AddDataSet("fill_7125/xangle_160_beta_0.30");
	AddDataSet("fill_7127/xangle_130_beta_0.25");
	AddDataSet("fill_7127/xangle_130_beta_0.27");
	AddDataSet("fill_7127/xangle_130_beta_0.30");
	AddDataSet("fill_7127/xangle_160_beta_0.30");
	AddDataSet("fill_7128/xangle_160_beta_0.30");
	AddDataSet("fill_7131/xangle_130_beta_0.27");
	AddDataSet("fill_7131/xangle_130_beta_0.30");
	AddDataSet("fill_7131/xangle_160_beta_0.30");
	AddDataSet("fill_7132/xangle_160_beta_0.30");
	AddDataSet("fill_7135/xangle_160_beta_0.30");
	AddDataSet("fill_7137/xangle_130_beta_0.25");
	AddDataSet("fill_7137/xangle_130_beta_0.27");
	AddDataSet("fill_7137/xangle_130_beta_0.30");
	AddDataSet("fill_7137/xangle_160_beta_0.30");
	AddDataSet("fill_7139/xangle_130_beta_0.25");
	AddDataSet("fill_7139/xangle_130_beta_0.27");
	AddDataSet("fill_7139/xangle_130_beta_0.30");
	AddDataSet("fill_7139/xangle_160_beta_0.30");
	//AddDataSet("fill_7142/xangle_160_beta_0.30");
	AddDataSet("fill_7144/xangle_130_beta_0.27");
	AddDataSet("fill_7144/xangle_130_beta_0.30");
	AddDataSet("fill_7144/xangle_160_beta_0.30");
	AddDataSet("fill_7145/xangle_130_beta_0.30");
	AddDataSet("fill_7145/xangle_160_beta_0.30");
}
