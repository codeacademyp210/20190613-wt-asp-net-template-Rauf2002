﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bemax.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BemaxEntities : DbContext
    {
        public BemaxEntities()
            : base("name=BemaxEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<HomeBemax> HomeBemax { get; set; }
        public virtual DbSet<HomeBgSlider> HomeBgSlider { get; set; }
        public virtual DbSet<HomeBlog> HomeBlog { get; set; }
        public virtual DbSet<HomeCards> HomeCards { get; set; }
        public virtual DbSet<HomeChoose> HomeChoose { get; set; }
        public virtual DbSet<HomeContact> HomeContact { get; set; }
        public virtual DbSet<HomeDescription> HomeDescription { get; set; }
        public virtual DbSet<HomeFeatures> HomeFeatures { get; set; }
        public virtual DbSet<HomeLogo> HomeLogo { get; set; }
        public virtual DbSet<HomeMenu> HomeMenu { get; set; }
        public virtual DbSet<HomeProjects> HomeProjects { get; set; }
        public virtual DbSet<HomeTest> HomeTest { get; set; }
        public virtual DbSet<HomeWork> HomeWork { get; set; }
    }
}
