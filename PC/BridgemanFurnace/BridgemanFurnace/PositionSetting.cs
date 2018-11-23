using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BridgemanFurnace
{
    public partial class PositionSetting : Form
    {
        public PositionSetting(int maxSpeedInterval, int minSpeedInterval)
        {
            InitializeComponent();
            this.mMaxSpeedInterval = maxSpeedInterval;
            this.mMinSpeedInterval = minSpeedInterval;
        }

        private void PositionSetting_Load(object sender, EventArgs e)
        {
            fm1 = (Form1)this.MdiParent;
            trackBar1.Value = 6;
            trackBar2.Value = 6;
            button4.Enabled = false;
        }


        private double calcPulseInterval(TrackBar tb)
        {
            double s = (double)(tb.Value) * 0.1;
            return (s*mMaxSpeedInterval + (1-s)*mMinSpeedInterval);
        }

        public double MaxSpeedInterval
        {
            set
            {
                this.mMaxSpeedInterval = value;
            }
            get
            {
                return this.mMaxSpeedInterval;
            }
        }

        public double MinSpeedInterval
        {
            set
            {
                this.mMinSpeedInterval = value;
            }
            get
            {
                return this.mMinSpeedInterval;
            }
        }

        private Form1 fm1;
        private double mMaxSpeedInterval; //ms
        private double mMinSpeedInterval; //ms
        private double mDistance; //cm
        private double mDestination;
        private Button mPressedButton;

        private void button3_Click(object sender, EventArgs e)
        {
            timer1.Interval = (int)calcPulseInterval(trackBar2);
            try
            {
                mDestination = Double.Parse(textBox1.Text);
                mDistance =  mDestination - fm1.CurPosition;
            }
            catch(Exception)
            {
                MessageBox.Show("数値を入力してください");
                return;
            }
            if(!(fm1.runMoter()))
            {
                MessageBox.Show("PICに接続されていません");
                return;
            }
            button3.Enabled = false;
            textBox1.Enabled = false;
            button4.Enabled = true;
            timer1.Enabled = true;
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (mDistance > 0.0) //降
            {
                fm1.lpulseMoter();
                fm1.CurPosition += fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }
            else //昇
            {
                fm1.rpulseMoter();
                fm1.CurPosition -= fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }

            if (mDistance * (mDestination - fm1.CurPosition) <= 0.0)
            {
                fm1.stopMoter();
                timer1.Enabled = false;
                button3.Enabled = true;
                textBox1.Enabled = true;
                button4.Enabled = false;
            }

        }

        private void button2_MouseDown(object sender, MouseEventArgs e)
        {
            timer2.Interval = (int)calcPulseInterval(trackBar1);
            if (!(fm1.runMoter()))
            {
                MessageBox.Show("PICに接続されていません");
                return;
            }
            mPressedButton = button2;
            timer2.Enabled = true;
        }

        private void button2_MouseUp(object sender, MouseEventArgs e)
        {
            timer2.Enabled = false;

        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            if (mPressedButton.Equals(button1)) //昇
            {
                fm1.rpulseMoter();
                fm1.CurPosition -= fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }
            else //降
            {
                fm1.lpulseMoter();
                fm1.CurPosition += fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }
        }

        private void button1_MouseDown(object sender, MouseEventArgs e)
        {
            timer2.Interval = (int)calcPulseInterval(trackBar1);
            if (!(fm1.runMoter()))
            {
                MessageBox.Show("PICに接続されていません");
                return;
            }
            mPressedButton = button1;
            timer2.Enabled = true;
        }

        private void button1_MouseUp(object sender, MouseEventArgs e)
        {
            timer2.Enabled = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            fm1.stopMoter();
            timer1.Enabled = false;
            button3.Enabled = true;
            textBox1.Enabled = true;
            button4.Enabled = false;
        } 
    }
}
