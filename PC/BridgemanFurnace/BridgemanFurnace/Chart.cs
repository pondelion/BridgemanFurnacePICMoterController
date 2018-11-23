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
    public partial class Chart : Form
    {
        private int mXDataIndex;
        private int mYDataIndex;
        private int mPrevRowCount;
        BridgemanFurnace.DataTable mParent;
        public Chart(Form parent)
        {
            InitializeComponent();
            mParent = (BridgemanFurnace.DataTable)parent;
           // chart1.DataSource = 
            mXDataIndex = 1; // 1 : Time[sec]
            mYDataIndex = 2; // 2 : PositionFromTop[cm]
            mPrevRowCount = 1;

            chart1.ChartAreas[0].BackColor = Color.Black; ;
            chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = true;
            chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = true;
            chart1.ChartAreas[0].AxisX.MajorGrid.LineColor = Color.Green;
            chart1.ChartAreas[0].AxisY.MajorGrid.LineColor = Color.Green;
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        public void DrawAdd()
        {
            
                if (mParent.dataGridView1.Rows.Count != mPrevRowCount)
                {
                    try
                    {
                        for (int i = mPrevRowCount - 1; i <= mParent.dataGridView1.Rows.Count - 2; i++)
                        {
                            System.Windows.Forms.DataVisualization.Charting.DataPoint dataPoint1 = new System.Windows.Forms.DataVisualization.Charting.DataPoint((int)(Double.Parse(mParent.dataGridView1[mXDataIndex, i].Value.ToString())), Double.Parse(mParent.dataGridView1[mYDataIndex, i].Value.ToString()));
                            chart1.Series[0].Points.Add(dataPoint1);
                        }
                    }
                    catch { }

                    mPrevRowCount = mParent.dataGridView1.Rows.Count;
                }

            
            
        }
    }
}
