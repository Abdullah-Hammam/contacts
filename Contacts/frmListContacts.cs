using ContactsBusinessLayer;
using System;
using System.Data;
using System.Windows.Forms;

namespace Contacts
{
    public partial class frmListContacts : Form
    {
        public frmListContacts()
        {
            InitializeComponent();
        }

        private void _RefreshContactsList()
        {
            dgvAllContacts.DataSource = clsContact.GetAllContacts();
        }

        private void dgvAllContacts_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
          //  MessageBox.Show(dgvAllContacts.CurrentRow.Cells[0].Value.ToString());
        }

        private void editToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            frmAddEditContact frm = new frmAddEditContact((int) dgvAllContacts.CurrentRow.Cells[0].Value);
            frm.ShowDialog();
            
            _RefreshContactsList();
        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            int CurrentID = (int)dgvAllContacts.CurrentRow.Cells[0].Value;
            if (  MessageBox.Show("Are you sure you want to delete contact [" + CurrentID + "]","Confirm Delete",MessageBoxButtons.OKCancel)==DialogResult.OK)

            {
                //Perform Delele and refresh
               if( clsContact.DeleteContact(CurrentID))
                {
                    MessageBox.Show("Contact Deleted Successfully.");
                    _RefreshContactsList();
                } 
               else
                    MessageBox.Show("Contact is not deleted.");
            }        
        }

        private void frmListContacts_Load(object sender, EventArgs e)
        {
            _RefreshContactsList();
        }

        private void btnAddNewContact_Click(object sender, EventArgs e)
        {
            frmAddEditContact frm = new frmAddEditContact(-1);
            frm.ShowDialog();
            _RefreshContactsList();
        }
        
    }
}
