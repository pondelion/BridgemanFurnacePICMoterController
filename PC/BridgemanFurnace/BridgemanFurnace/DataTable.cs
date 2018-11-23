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
    public partial class DataTable : Form
    {
        public DataTable()
        {
            InitializeComponent();
        }

        private void DataTable_Load(object sender, EventArgs e)
        {

        }

        private void DataTable_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            mChart = new Chart(this);
            mChart.MdiParent = this.MdiParent;
            mChart.Show();

            mChart.DrawAdd();
            
        }

        public Chart mChart = null;

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
