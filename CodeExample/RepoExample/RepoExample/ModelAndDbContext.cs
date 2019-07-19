using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RepoExample
{
    public class Student
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
    }

    public class DbStudentContext : DbContext
    {
        public DbStudentContext()
        {

        }
        public virtual DbSet<Student> Forms { get; set; }
    }
}
