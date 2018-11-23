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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            this.Text = "Sequence";
            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;
            comboBox3.SelectedIndex = 0;
            listBox1.SelectedIndex = 0;

            fm1 = (Form1)this.MdiParent;
            dt1 = new DataTable();
            dt1.MdiParent = fm1;

            dataGridView1.CurrentCell = dataGridView1[3, 0];
           
            //dataGridView1.RowCount = 0;
            //dataGridView1[4, 0].Value = "1";
            //dataGridView1.AlternatingRowsDefaultCellStyle.BackColor = Color.Azure;
            // dataGridView1.EnableHeadersVisualStyles = false;
            // dataGridView1.ColumnHeadersDefaultCellStyle.BackColor = Color.Red;
            // dataGridView1.RowHeadersDefaultCellStyle.BackColor = Color.Blue;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            foreach (DataGridViewColumn col in dataGridView1.Columns)
            {
                col.SortMode = DataGridViewColumnSortMode.NotSortable;
            }

            //dataGridView1.Rows.Add(new string[] { "1", "3", "4", "4", "24", "時計回り" , "Set Position", "1"});
            dataGridView1.AllowUserToDeleteRows = true;

            dataGridView1.Columns[0].ToolTipText = "実行ナンバー";
            dataGridView1.Columns[1].ToolTipText = "ブリッジマン炉上の入り口からの深さ(cm)";
            dataGridView1.Columns[2].ToolTipText = "石英管（試料）の昇降速度(cm/min)";
            dataGridView1.Columns[3].ToolTipText = "昇降速度(rpm → 1分あたりのモーター回転数(rad))";
            dataGridView1.Columns[4].ToolTipText = "この行の実行命令に要する時間(hour)";
        }


        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            DataGridViewCell c = dataGridView1.CurrentCell;
            int rn = c.RowIndex;
            int cn = c.ColumnIndex;
            //label24.Text = "行 : " + rn.ToString() + "," + "列 : " + cn.ToString();
            //DataTable dt = (DataTable)dataGridView1.DataSource;
            //label24.Text = dt.Rows.Count.ToString();
            //dataGridView1.Rows.RemoveAt(0);
           
        
        }

        private void radioButton_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radioButton5.Checked)
            {
                textBox4.Enabled = true;
                textBox2.Enabled = false;
                textBox3.Enabled = false;

            }
            else if (radioButton6.Checked)
            {
                textBox4.Enabled = false;
                textBox2.Enabled = true;
                textBox3.Enabled = false;
            }
            else if (radioButton7.Checked)
            {
                textBox4.Enabled = false;
                textBox2.Enabled = false;
                textBox3.Enabled = true;
            }
            /*
            foreach (DataGridViewRow item in dataGridView1.SelectedRows)
            {
                label24.Text += "\n" + item.Index.ToString();
            }
             */

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tabControl1.SelectedIndex = listBox1.SelectedIndex;
        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (!(fm1.IsMoterRadiusSet))
            {
                MessageBox.Show("モーターの回転部の半径を左下の「Pulley Radius」に入力してください");
                return;
            }


            string no = "",height = "",speed = "",rph = "",time = "",totaltime = "",direction = "",command = "",commandno = "";
            double distance = 0.0;
            no = (dataGridView1.Rows.Count).ToString();
            direction = "降";

           
            /*
            if(!(fm1.IsMoterRadiusSet))
            {
                MessageBox.Show("モーターの回転部の半径が設定されていません");
                return;
            }
             */

            switch (tabControl1.SelectedIndex)
            {
                case 0: // Set Position
                    commandno = "1";
                    command = "SET POSITION";

                    if (textBox1.Text.Equals(""))
                    {
                        MessageBox.Show("高さを入力してください");
                        return;
                    }
                    if (radioButton1.Checked) // 上から
                    {

                        height = textBox1.Text;
                    }
                    else // 下から
                    {



                        if (!(fm1.IsFurnaceHeightSet))
                        {
                            MessageBox.Show("炉の長さが設定されていません");
                            return;
                        }
                        try
                        {
                            height = (fm1.FurnaceHeight - Double.Parse(textBox1.Text)).ToString();
                        }
                        catch (FormatException)
                        {
                            MessageBox.Show("数値を入力してください");
                            return;
                        }
                    }
                    try
                    {
                        distance = (Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString()));
                    }
                    catch (FormatException)
                    {
                        MessageBox.Show("数値を入力してください");
                        return;
                    }

                    if (radioButton5.Checked)
                    {
                        if (textBox4.Text.Equals(""))
                        {
                            MessageBox.Show("時間を入力してください");
                            return;
                        }
                        switch (comboBox1.SelectedIndex)
                        {
                            case 0: //min
                                try
                                {
                                    time = (Double.Parse(textBox4.Text) / 60.0).ToString();
                                }
                                catch (FormatException)
                                {
                                    MessageBox.Show("数値を入力してください");
                                    return;
                                }
                                break;
                            case 1: //hour
                                time = textBox4.Text;
                                break;
                        }
                        
                        //speed = (Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 1) >= 0) ? (dataGridView1[1,  (Int16.Parse(no) - 1)].Value).ToString() : "0") / Double.Parse(time)).ToString();
                        //speed = ((Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString())) / Double.Parse(time)).ToString();
                        speed = (distance / Double.Parse(time)).ToString();

                        rph = (Double.Parse(speed) / fm1.MoterRadius).ToString();
                    }
                    else if (radioButton6.Checked)
                    {
                        if (textBox2.Text.Equals(""))
                        {
                            MessageBox.Show("速さを入力してください");
                            return;
                        }
                        
                        speed = textBox2.Text;
                        try
                        {
                            rph = (Double.Parse(speed) / fm1.MoterRadius).ToString();
                        }
                        catch (FormatException)
                        {
                            MessageBox.Show("数値を入力してください");
                            return;
                        }
                        //time = ((Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString())) / Double.Parse(speed)).ToString();
                        time = (distance / Double.Parse(speed)).ToString();
                        
                        if (Double.Parse(time) < 0.0)
                        {
                            speed = (-1.0 * Double.Parse(speed)).ToString();
                            rph = (-1.0 * Double.Parse(rph)).ToString();
                            time = (-1.0 * Double.Parse(time)).ToString();
                        }
                    }
                    else if (radioButton7.Checked)
                    {

                        if (textBox3.Text.Equals(""))
                        {
                            MessageBox.Show("RPHを入力してください");
                            return;
                        }
                        try
                        {
                            rph = textBox3.Text;
                            speed = (Double.Parse(rph) * fm1.MoterRadius).ToString();
                        }
                        catch (FormatException)
                        {
                            MessageBox.Show("数値を入力してください");
                            return;
                        }
                        //time = ((Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString())) / Double.Parse(speed)).ToString();
                        time = (distance / Double.Parse(speed)).ToString();

                        if (Double.Parse(time) < 0.0)
                        {
                            speed = (-1.0 * Double.Parse(speed)).ToString();
                            rph = (-1.0 * Double.Parse(rph)).ToString();
                            time = (-1.0 * Double.Parse(time)).ToString();
                        }
                    }

                    

                    break;
                
                case 1: // SET VELOCITY
                    if ((speed = textBox5.Text) == "")
                    {
                        MessageBox.Show("速さを入力してください");
                        return;
                    }
                    if ((time = textBox6.Text) == "")
                    {
                        MessageBox.Show("時間を入力してください");
                        return;
                    }
                    command = "SET VELOCITY";
                    commandno = "2";
                    try
                    {
                        height = (Double.Parse(speed) * Double.Parse(time) + Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString())).ToString();
                        rph = (Double.Parse(speed) / fm1.MoterRadius).ToString();
                        distance = (Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString()));
                    }
                    catch (FormatException)
                    {
                        MessageBox.Show("数値を入力してください");
                        return;
                    }
                    break;

                case 2: //SET RPH
                    try
                    {
                    if ((rph = textBox7.Text) == "")
                    {
                        MessageBox.Show("RPHを入力してください");
                        return;
                    }
                    if ((time = textBox8.Text) == "")
                    {
                        MessageBox.Show("時間を入力してください");
                        return;
                    }
                    command = "SET RPH";
                    commandno = "3";
                    
                        speed = (fm1.MoterRadius * Double.Parse(rph)).ToString();
                        height = (Double.Parse(speed) * Double.Parse(time) + Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString())).ToString();
                        distance = (Double.Parse(height) - Double.Parse(((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString()));
                    }
                    catch (FormatException)
                    {
                        MessageBox.Show("数値を入力してください");
                        return;
                    }
                    break;
                case 3: //SET DIRECTION
                    return;

                    command = "SET DIRECTION";
                    commandno = "4";
                    break;
                case 4: //SET TEMPERATURE
                    return;
                    command = "SET TEMPERATURE";
                    commandno = "5";

                    break;
                case 5: //WAIT
                    try
                    {
                        if ((time = textBox11.Text) == "")
                        {
                            MessageBox.Show("時間を入力してください");
                            return;
                        }

                        switch (comboBox2.SelectedIndex)
                        {
                            case 0:
                                time = (Double.Parse(time) / 3600.0).ToString();
                                break;
                            case 1:
                                time = (Double.Parse(time) / 60.0).ToString();
                                break;
                        }
                        command = "WAIT";
                        commandno = "6";

                        distance = 0.0;
                        speed = "0";
                        rph = "0";
                        
                        height = ((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString();


                    }
                    catch (FormatException)
                    {
                        MessageBox.Show("数値を入力してください");
                        return;
                    }
                    break;
                case 6://END
                    command = "END";
                    commandno = "7";
                    speed = "0";
                    rph = "0";
                    time = "0";
                    distance = 0.0;
                    height = ((Int16.Parse(no) - 2) >= 0) ? (dataGridView1[1, (Int16.Parse(no) - 2)].Value).ToString() : fm1.CurPosition.ToString();

                    break;
            }

            if (Double.Parse(speed) == 0.0 || distance == 0.0)
                direction = "停止";
            else if (Double.Parse(speed) < 0.0)
                direction = "昇";
            else
                direction = "降";


            double t=0.0;
            for (int i = 0; i < dataGridView1.Rows.Count-1; i++)
            {
                t += Double.Parse((dataGridView1[4, i].Value).ToString());
            }
            t += Double.Parse(time);
            totaltime = t.ToString();


            dataGridView1.Rows.Add(new string[] { no, height, speed, rph, time, totaltime, direction, command, commandno });

            if (command == "END")
            {
                for (int i = 0; i < dataGridView1.Columns.Count; i++)
                {
                    dataGridView1[i, dataGridView1.Rows.Count - 2].Style.BackColor = Color.Blue;
                }
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (radioButton9.Checked)
            {
                try
                {
                    foreach (DataGridViewRow dr in dataGridView1.SelectedRows)
                        dataGridView1.Rows.RemoveAt(dr.Index);
                }
                catch
                {
                }
            }
        }


        private string mSequenceFileName = "";
        private double mElapsedTimeFromSequenceStart = 0.0;
        private int mCurRunningNo = 0;
        private bool mIsRunning = false;
        private Form1 fm1 = null;
        private BridgemanFurnace.DataTable dt1 = null;
        private DateTime mDtSequenceStart;

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(mIsRunning)
            {
                //mTimeElapsedFromSequenceStart += timer1.Interval*0.001/3600.0; //hour
                //fm1.CurPosition += timer1.Interval * 0.001 * Double.Parse(dataGridView1[2, mCurRunningNo - 1].Value.ToString()) / 3600.0;
                mElapsedTimeFromSequenceStart = ((TimeSpan)(DateTime.Now - mDtSequenceStart)).TotalHours;

                if(mElapsedTimeFromSequenceStart >= Double.Parse(dataGridView1[5, mCurRunningNo - 1].Value.ToString()))
                {
                    
                    mCurRunningNo++;
                    dataGridView1.Rows[mCurRunningNo - 2].Selected = false;
                    dataGridView1.Rows[mCurRunningNo - 1].Selected = true;

                    if(dataGridView1[6, mCurRunningNo - 1].Value.Equals("停止"))
                    {
                        adjustPosition();
                    }

                    fm1.CurVelocity = Double.Parse(dataGridView1[2,mCurRunningNo-1].Value.ToString());
                    if(dataGridView1[7, mCurRunningNo - 1].Value.ToString() == "END")
                    {
                        mIsRunning = false;
                        fm1.IsRunning = false;
                        recordTimer.Enabled = false;
                        mElapsedTimeFromSequenceStart = 0.0;
                        button5.Enabled = button1.Enabled = button2.Enabled = true;
                        pulseTimer.Enabled = false;
                        fm1.stopMoter();
                        return;
                    }
                    if (Double.Parse(dataGridView1[3, mCurRunningNo - 1].Value.ToString()) != 0.0f)
                    {
                        pulseTimer.Interval = (int)(Math.Abs((3.1416 * fm1.AnglePerStep * 60 * 1000 * 60 / 180.0 / Double.Parse(dataGridView1[3, mCurRunningNo - 1].Value.ToString()))));
                    }
                    else
                    {
                        pulseTimer.Interval = Int32.MaxValue;
                    }
                    //pulseTimer.Interval = (int)(Math.Abs(( fm1.AnglePerStep * 60 * 1000 / Double.Parse(dataGridView1[3, mCurRunningNo - 1].Value.ToString()))));
                }
            }
                
        }

        private void button5_Click(object sender, EventArgs e)
        {
            bool bEndIncluded = false;
            for (int i = 0; i < dataGridView1.Rows.Count - 1; ++i)
            {
                if (dataGridView1[7, i].Value.ToString() == "END")
                    bEndIncluded = true;
            }
            if (!bEndIncluded)
            {
                MessageBox.Show("必ず最後にEND命令を含ませてください");
                return;
            }
            if (fm1.serialPort1.IsOpen)
            {
                fm1.runMoter();
            }
            else
            {
                MessageBox.Show("PICに接続されていません");
                return;
            }
           // recordTimer.Interval = (int)(3.1416 * fm1.AnglePerStep * 60 * 1000 / 180.0 / Double.Parse(dataGridView1[3, 0].Value.ToString()));
            dataGridView1.Rows[0].Selected = true;
            dataGridView1.Rows[dataGridView1.Rows.Count - 1].Selected = false;
            button5.Enabled = button1.Enabled = button2.Enabled = false;
            fm1.CurVelocity = Double.Parse(dataGridView1[2, 0].Value.ToString());
            mCurRunningNo = 1;
            mIsRunning = true;
            fm1.IsRunning = true;
            recordTimer.Enabled = true;
            if (Double.Parse(dataGridView1[3, mCurRunningNo - 1].Value.ToString()) != 0.0f)
            {
                pulseTimer.Interval = (int)(Math.Abs((3.1416 * fm1.AnglePerStep * 60 * 1000 * 60 / 180.0 / Double.Parse(dataGridView1[3, 0].Value.ToString()))));
            }
            else
            {
                pulseTimer.Interval = Int32.MaxValue;
            }
                
            pulseTimer.Interval = (int)(Math.Abs(( fm1.AnglePerStep * 60 * 1000 / Double.Parse(dataGridView1[3, 0].Value.ToString()))));
            pulseTimer.Enabled = true;
            mDtSequenceStart = DateTime.Now;

            dt1.dataGridView1.Rows.Add(new string[] { dt1.dataGridView1.Rows.Count.ToString(), (mElapsedTimeFromSequenceStart * 3600).ToString(), fm1.CurPosition.ToString(), fm1.CurVelocity.ToString(), fm1.CurTemperature.ToString(), dataGridView1[7, mCurRunningNo - 1].Value.ToString() });
            if (dt1.mChart != null)
            {
                dt1.mChart.DrawAdd();
            }
        }

       

        private void Form2_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }

        private void button6_Click(object sender, EventArgs e)
        {
           mElapsedTimeFromSequenceStart = 0.0;
           mCurRunningNo = 0;
           mIsRunning = false;
           recordTimer.Enabled = false;
           pulseTimer.Enabled = false;
           button5.Enabled = button1.Enabled = button2.Enabled = true;
        }

        private void recordTimer_Tick(object sender, EventArgs e)
        {
            dt1.dataGridView1.Rows.Add(new string[] { dt1.dataGridView1.Rows.Count.ToString(), (mElapsedTimeFromSequenceStart * 3600).ToString(), fm1.CurPosition.ToString(), fm1.CurVelocity.ToString(), fm1.CurTemperature.ToString(), dataGridView1[7, mCurRunningNo - 1].Value.ToString() });
            if (dt1.mChart != null)
            {
                dt1.mChart.DrawAdd();
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            dt1.Show();
        }

        private void pulseTimer_Tick(object sender, EventArgs e)
        {
            if (dataGridView1[6, mCurRunningNo - 1].Value.Equals("降"))
            {
                fm1.lpulseMoter();
                fm1.CurPosition += fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }
            else
            {
                fm1.rpulseMoter();
                fm1.CurPosition -= fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
            }
        }


        private void adjustPosition()
        {
            int pulseNum;
            double distance;

            distance = fm1.CurPosition - Double.Parse(dataGridView1[1, mCurRunningNo - 1].Value.ToString());
           pulseNum = (int)(distance * 180.0 / fm1.AnglePerStep / 3.1416 / fm1.MoterRadius);
            if(distance > 0.0) // 現在位置が目的の位置より下→巻き上げて調整
            {
                for(int i =0; i<pulseNum; i++)
                {
                    fm1.rpulseMoter();
                     fm1.CurPosition -= fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
                     //fm1.label1.Text = string.Format("上から {0:f1} cm", fm1.CurPosition);
                     System.Threading.Thread.Sleep(20);
                }
                
            }
            else if(distance < 0.0)
            {
                pulseNum *= -1;
                for(int i =0; i<pulseNum; i++)
                {
                    fm1.lpulseMoter();
                     fm1.CurPosition += fm1.MoterRadius * fm1.AnglePerStep * 3.1415 / 180.0;
                     //fm1.label1.Text = string.Format("上から {0:f1} cm", fm1.CurPosition);
                     System.Threading.Thread.Sleep(20);
                }
            }
               
        }
        
    }
}
