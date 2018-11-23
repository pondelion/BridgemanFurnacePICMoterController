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
    public partial class CommandWindow : Form
    {
        public CommandWindow()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (fm1.serialPort1.IsOpen)
            {
                try
                {
                    fm1.serialPort1.Write(textBox1.Text);
                }
                catch
                {
                    MessageBox.Show("PICにコマンドを送信できませんでした");
                   
                }
            }
            else
            {
                MessageBox.Show("PICに接続されていません");
            }

        }

        private Form1 fm1;

        private void CommandWindow_Load(object sender, EventArgs e)
        {
            fm1 = (Form1)this.MdiParent;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (fm1.serialPort1.IsOpen)
            {
                try
                {
                    fm1.serialPort1.Write("RUN");
                }
                catch
                {
                    MessageBox.Show("PICにコマンドを送信できませんでした");

                }
            }
            else
            {
                MessageBox.Show("PICに接続されていません");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (fm1.serialPort1.IsOpen)
            {
                try
                {
                    fm1.serialPort1.Write("STOP");
                }
                catch
                {
                    MessageBox.Show("PICにコマンドを送信できませんでした");

                }
            }
            else
            {
                MessageBox.Show("PICに接続されていません");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                timer1.Interval = int.Parse(textBox3.Text);
                timer1.Enabled = true;
            }
            catch
            {
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            mTime = 0;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (fm1.serialPort1.IsOpen)
            {
                
                    try
                    {
                        mTime += timer1.Interval;
                        textBox2.Text = mTime.ToString();
                        fm1.serialPort1.Write("LPULSE");
                    }
                    catch
                    {
                        MessageBox.Show("PICにコマンドを送信できませんでした");

                    }
                
            }
            else
            {
                MessageBox.Show("PICに接続されていません");
            }
        }

        private int mTime = 0;

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
