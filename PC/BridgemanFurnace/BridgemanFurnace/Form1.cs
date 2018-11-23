using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.IO.Ports;


namespace BridgemanFurnace
{
    public partial class Form1 : Form
    {

        [System.Runtime.InteropServices.DllImport(@"..\..\..\..\DLL\BridgemanShare.dll", CallingConvention = System.Runtime.InteropServices.CallingConvention.Cdecl)]
        public static extern void SetSampleHeight(Double height);
        [System.Runtime.InteropServices.DllImport(@"..\..\..\..\DLL\BridgemanShare.dll", CallingConvention = System.Runtime.InteropServices.CallingConvention.Cdecl)]
        public static extern void SetFurnaceHeight(Double height);


        public Form1()
        {
            InitializeComponent();
        }



        //textBox1.Text = System.Net.Dns.GetHostName();
        /*
        string server = "www.yahoo.com";

        System.Net.IPHostEntry iphe = System.Net.Dns.GetHostEntry(server);

        System.Net.IPAddress hstadd = iphe.AddressList[0];

        textBox2.Text = hstadd.ToString();
            
        */
        /*
        if(System.Net.NetworkInformation.NetworkInterface.GetIsNetworkAvailable())
        {
            textBox2.AppendText("接続されています\n");
        }
        else
        {
            textBox2.AppendText("接続されていません");
             
        }
         */


        private void メニューToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.Location = new Point(5, 5);

            trackBar1.SetRange(40, 100);
            trackBar1.Value = 100;

            textBox4.Text = "60";
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void 新規作成ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.MdiParent = this;
            form2.Show();
        }

        private void 開くToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            System.Environment.CurrentDirectory = @"..\..\..\..\3D\Furnace3D";
            process1.Start();
        }


        private double mCurPosition = 0;
        private double mCurVelocity = 0;
        private double mCurRPH = 0;
        private double mCurTemperature = 0;
        private double mFurnaceHeight = 0;
        private double mMoterRadius = 2; //cm
        private double mStep = 200;
        private double mAnglePerPulse = 1.8; //°
        private double mTimeElapsed = 0.0;
        private bool mIsRunning = false;
        private bool mIsTemperatureDataAvailable = false;
        private bool mIsInternetAvailable = false;
        private bool mIsFurnaceHeightSet = false;
        private bool mIsMoterRadiusSet = false;
        private bool mIsPICConnected = true;
        private PositionSetting mPosSet = null;
        private TemperatureDistribution mTempDist = null;

        public bool IsRunning
        {
            set
            {
                this.mIsRunning = value;
            }
            get
            {
                return this.mIsRunning;
            }
        }
        public double CurVelocity
        {
            set
            {
                this.mCurVelocity = value;
            }
            get
            {
                return this.mCurVelocity;
            }
        }
        public double CurPosition
        {
            set
            {
                this.mCurPosition = value;
            }
            get
            {
                return this.mCurPosition;
            }
        }
        public double CurTemperature
        {
            set
            {
                this.mCurTemperature = value;
            }
            get
            {
                return this.mCurTemperature;
            }
        }

        public double FurnaceHeight
        {
            set
            {
                this.mFurnaceHeight = value;
            }
            get
            {
                return this.mFurnaceHeight;
            }
        }
        public double MoterRadius
        {
            set
            {
                this.mMoterRadius = value;
            }
            get
            {
                return this.mMoterRadius;
            }
        }
        public double Step
        {
            set
            {
                this.mStep = value;
            }
            get
            {
                return this.mStep;
            }
        }
        public double AnglePerStep
        {
            set
            {
                this.mAnglePerPulse = value;
            }
            get
            {
                return this.mAnglePerPulse;
            }
        }
        public bool IsFurnaceHeightSet
        {
            set
            {
                this.mIsFurnaceHeightSet = value;
            }
            get
            {
                return this.mIsFurnaceHeightSet;
            }
        }

        public bool IsMoterRadiusSet
        {
            set
            {
                this.mIsMoterRadiusSet = value;
            }
            get
            {
                return this.mIsMoterRadiusSet;
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label3.Visible = !(label3.Visible);
            if (System.Net.NetworkInformation.NetworkInterface.GetIsNetworkAvailable())
            {
                label10.Text = "ネットワーク接続OK";
                checkBox1.Enabled = true;
                textBox5.Enabled = true;
                mIsInternetAvailable = true;
            }
            else
            {
                label10.Text = "※ネットワークに接続されていません";
                checkBox1.Enabled = false;
                textBox5.Enabled = false;
                mIsInternetAvailable = false;
            }

            if (mIsRunning)
            {
                button9.Enabled = button10.Enabled = false;
                label3.Text = "Running";
            }
            else
            {
                button9.Enabled = button10.Enabled = true;
                label3.Text = "Not Running";
            }

            checkCOMConnection();

            //label11.Text = this.MdiChildren.Length.ToString();
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
            saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Recent);
            saveFileDialog1.Filter = "datファイル(*.dat)|*.dat";
            saveFileDialog1.Title = "データファイル保存先/保存名を指定してください";
            saveFileDialog1.FileName = "";

            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                textBox1.Text = saveFileDialog1.FileName;
                toolTip1.SetToolTip(textBox1, saveFileDialog1.FileName);
            }

        }

        private void button4_Click(object sender, EventArgs e)
        {
            openFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Recent);
            openFileDialog1.Filter = "SEQUENCEファイル(*.seq)|*.seq";
            openFileDialog1.Title = "シーケンスファイルを選択してください";
            openFileDialog1.FileName = "";

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                textBox2.Text = openFileDialog1.FileName;
                toolTip1.SetToolTip(textBox2, openFileDialog1.FileName);
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            openFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Recent);
            openFileDialog1.Filter = "CSV Files(*.csv)|*.csv|Text Files(*.txt)|*.txt";
            openFileDialog1.Title = "温度勾配データファイルを選択してください";
            openFileDialog1.FileName = "";

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                textBox3.Text = openFileDialog1.FileName;
                toolTip1.SetToolTip(textBox3, openFileDialog1.FileName);
                if (System.IO.File.Exists(textBox3.Text))
                {
                    //StreamReader sr ;
                    mTempDist = new TemperatureDistribution();
                    mTempDist.MdiParent = this;
                    mTempDist.Show();
                    readTemperatureDataFromFile(textBox3.Text, mTempDist.dataGridView1);
                    mTempDist.drawGraph();
                }
            }
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            mTimeElapsed += 0.1;

           
            label1.Text = string.Format("上から {0:f1} cm", mCurPosition);
            label2.Text = string.Format("{0:f1} cm/hour", mCurVelocity);
            label4.Text = string.Format("{0:f1} rad/hour", mCurRPH);

            SetSampleHeight(mCurPosition);
        }

        private void 開くToolStripMenuItem_Click(object sender, EventArgs e)
        {
            button4_Click(this, null);
        }

        private void checkCOMConnection()
        {
            if (comboBox1.Items.Count != SerialPort.GetPortNames().Length)
            {
                comboBox1.Items.Clear();
                foreach (string s in SerialPort.GetPortNames())
                {
                    comboBox1.Items.Add(s);
                }
                //comboBox1.SelectedIndex = 0;
            }

        }

        private void button13_Click(object sender, EventArgs e)
        {
            try
            {
                serialPort1.PortName = comboBox1.Items[comboBox1.SelectedIndex].ToString();

                serialPort1.Open();
                button13.Enabled = false;
                button12.Enabled = true;
                comboBox1.Enabled = false;
                mIsPICConnected = true;
            }
            catch
            {
                button12_Click(this, null);
            }
        }



        private void button12_Click(object sender, EventArgs e)
        {
            button13.Enabled = true;
            button12.Enabled = false;
            comboBox1.Enabled = true;

            try
            {
                serialPort1.DiscardInBuffer();
                serialPort1.DiscardOutBuffer();

                serialPort1.Close();
                mIsPICConnected = false;
            }
            catch { }

        }

        private bool sendCommandToPIC(string s)
        {
            try
            {
                serialPort1.Write(s);
            }
            catch
            {
                MessageBox.Show("PICにコマンドを送信できませんでした");
                button12_Click(this, null);
                return false;
            }
            return true;
        }

        private void dataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            string s;

            s = serialPort1.ReadExisting();
            //MessageBox.Show(s);
        }

        private void button11_Click(object sender, EventArgs e)
        {
            try
            {
                FurnaceHeight = Double.Parse(textBox4.Text);
                SetFurnaceHeight(FurnaceHeight);
                button11.Enabled = false;
                button6.Enabled = true;
                textBox4.Enabled = false;
                IsFurnaceHeightSet = true;
            }
            catch
            {
                MessageBox.Show("数字を入力してください");
            }

        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            this.Opacity = Double.Parse(trackBar1.Value.ToString()) * 0.01;
        }

        private void openWindowToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CommandWindow cw1 = new CommandWindow();
            cw1.MdiParent = this;
            cw1.Show();
            
        }

        public bool runMoter()
        {
            if (serialPort1.IsOpen)
            {
                return sendCommandToPIC("RUN");
                
            }
            else
            {
                return false;
            }
        }

        public bool rpulseMoter()
        {
            if (serialPort1.IsOpen)
            {
                return sendCommandToPIC("RPULSE");
            }
            else
            {
                return false;
            }
        }

        public bool lpulseMoter()
        {
            if (serialPort1.IsOpen)
            {
                return sendCommandToPIC("LPULSE");
                
            }
            else
            {
                return false;
            }
        }

        public bool stopMoter()
        {
            if (serialPort1.IsOpen)
            {
                return sendCommandToPIC("STOP");
               
            }
            else
            {
                return false;
            }
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            BaseSetting bs1 = new BaseSetting();
            bs1.MdiParent = this;
            bs1.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            try
            {
            MoterRadius = Double.Parse(textBox6.Text);
            button5.Enabled = false;
            button14.Enabled = true;
            textBox6.Enabled = false;
            IsMoterRadiusSet = true;
            }
            catch
            {
                MessageBox.Show("数字を入力してください");
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            button11.Enabled = true;
            button6.Enabled = false;
            textBox4.Enabled = true;
        }

        private void button14_Click(object sender, EventArgs e)
        {
            button5.Enabled = true;
            button14.Enabled = false;
            textBox6.Enabled = true;

        }

        private void button15_Click(object sender, EventArgs e)
        {
            SetSampleHeight(Double.Parse(textBox7.Text));
        }

        private void button9_Click(object sender, EventArgs e)
        {
            mPosSet = new PositionSetting(10,300);
            mPosSet.MdiParent = this;
            mPosSet.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (mTempDist != null)
            {
                mTempDist.Show();
            }
        }

        private void readTemperatureDataFromFile(string FileName, DataGridView dgv)
        {

            if (!(File.Exists(FileName)))
            {
                MessageBox.Show("ファイルが存在しません");
                return;
            }
            StreamReader sr;
            try
            {
                sr = new StreamReader(@FileName);
            }
            catch
            {
                MessageBox.Show("温度ファイル読み込みに失敗しました");
                return;
            }
            string[] strBuf;
            while (sr.Peek() > -1)
            {
                strBuf = sr.ReadLine().Split(',');
                if (Double.Parse(strBuf[0]) >= 0.0)
                {
                    dgv.Rows.Add(new string[] { strBuf[0], strBuf[1] });
                }
                else
                {
                    if (!mIsFurnaceHeightSet)
                    {
                        MessageBox.Show("下からの位置で指定する場合は炉の高さをセットしてから温度勾配データを読み込んでください");
                        return;
                    }
                    double height;
                    height = mFurnaceHeight + Double.Parse(strBuf[0]);
                    dgv.Rows.Add(new string[] { height.ToString(), strBuf[1] });
                }

            }
        }


    }
}
