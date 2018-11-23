using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BridgemanFurnace
{
    public partial class TemperatureDistribution : Form
    {
        public TemperatureDistribution()
        {
            InitializeComponent();
            chart1.ChartAreas[0].BackColor = Color.Black; ;
            chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = true;
            chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = true;
            chart1.ChartAreas[0].AxisX.MajorGrid.LineColor = Color.Green;
            chart1.ChartAreas[0].AxisY.MajorGrid.LineColor = Color.Green;
            chart1.Series[0].Color = Color.LightSalmon;
        }

        private void TemperatureDistribution_Load(object sender, EventArgs e)
        {
            
        }

        private void TemperatureDistribution_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }

        public ArrayList temperatureToPosition(double temp)
        {
            ArrayList posList = new ArrayList();
            double T1,T2,P1,P2;
            for (int i = 0; i < dataGridView1.Rows.Count - 2; i++)
            {
                T1 = Double.Parse(dataGridView1[1, i].Value.ToString());
                T2 = Double.Parse(dataGridView1[1, i + 1].Value.ToString());
                if ((T1 - temp) * (T2 - temp) <= 0.0)
                {
                    
                    P1 = Double.Parse(dataGridView1[0, i].Value.ToString());
                    P2 = Double.Parse(dataGridView1[0, i + 1].Value.ToString());
                    posList.Add((P1 * (T2 - temp) + P2 * (temp - T1)) / (T2 - T1));
                }
            }
            return posList; 
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            ArrayList pos;
            try
            {
                pos = temperatureToPosition(Double.Parse(textBox1.Text));
            

            for(int i=0; i<pos.Count; i++)
            {
                MessageBox.Show(pos[i].ToString());
            }

            }
            catch { }
        }

        public double positionToTemperature(double pos)
        {
            double T1, T2, P1, P2;
            for (int i = 0; i < dataGridView1.Rows.Count - 2; i++)
            {
                P1 = Double.Parse(dataGridView1[0, i].Value.ToString());
                P2 = Double.Parse(dataGridView1[0, i + 1].Value.ToString());

                if ((P1 - pos) * (P2 - pos) <= 0.0)
                {
                    T1 = Double.Parse(dataGridView1[1, i].Value.ToString());
                    T2 = Double.Parse(dataGridView1[1, i + 1].Value.ToString());

                    return ((T2 * (pos - P1) + T1 * (P2 - pos)) / (P2 - P1));
                }
            }
            return -1;
        }

        public void drawGraph()
        {
            double pos, temp;
            try
            {
                for (int i = 0; i <= dataGridView1.Rows.Count - 2; i++)
                {
                    pos = Double.Parse(dataGridView1[0, i].Value.ToString());
                    temp = Double.Parse(dataGridView1[1, i].Value.ToString());
                    System.Windows.Forms.DataVisualization.Charting.DataPoint dataPoint1 = new System.Windows.Forms.DataVisualization.Charting.DataPoint(pos, temp);
                    chart1.Series[0].Points.Add(dataPoint1);
                }
            }
            catch { }
        }
    }
}
