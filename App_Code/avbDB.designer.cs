﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.296
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="phongDB")]
public partial class avbDBDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertavb_content(avb_content instance);
  partial void Updateavb_content(avb_content instance);
  partial void Deleteavb_content(avb_content instance);
  partial void Insertavb_contact(avb_contact instance);
  partial void Updateavb_contact(avb_contact instance);
  partial void Deleteavb_contact(avb_contact instance);
  #endregion
	
	public avbDBDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["phongDBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public avbDBDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public avbDBDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public avbDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public avbDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<avb_content> avb_contents
	{
		get
		{
			return this.GetTable<avb_content>();
		}
	}
	
	public System.Data.Linq.Table<avb_contact> avb_contacts
	{
		get
		{
			return this.GetTable<avb_contact>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.avb_content")]
public partial class avb_content : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _page;
	
	private string _text_content;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnpageChanging(string value);
    partial void OnpageChanged();
    partial void Ontext_contentChanging(string value);
    partial void Ontext_contentChanged();
    #endregion
	
	public avb_content()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_page", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string page
	{
		get
		{
			return this._page;
		}
		set
		{
			if ((this._page != value))
			{
				this.OnpageChanging(value);
				this.SendPropertyChanging();
				this._page = value;
				this.SendPropertyChanged("page");
				this.OnpageChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_text_content", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string text_content
	{
		get
		{
			return this._text_content;
		}
		set
		{
			if ((this._text_content != value))
			{
				this.Ontext_contentChanging(value);
				this.SendPropertyChanging();
				this._text_content = value;
				this.SendPropertyChanged("text_content");
				this.Ontext_contentChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.avb_contact")]
public partial class avb_contact : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _topic;
	
	private string _name;
	
	private string _email;
	
	private string _message;
	
	private string _newsletter;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OntopicChanging(string value);
    partial void OntopicChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OnmessageChanging(string value);
    partial void OnmessageChanged();
    partial void OnnewsletterChanging(string value);
    partial void OnnewsletterChanged();
    #endregion
	
	public avb_contact()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_topic", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string topic
	{
		get
		{
			return this._topic;
		}
		set
		{
			if ((this._topic != value))
			{
				this.OntopicChanging(value);
				this.SendPropertyChanging();
				this._topic = value;
				this.SendPropertyChanged("topic");
				this.OntopicChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string email
	{
		get
		{
			return this._email;
		}
		set
		{
			if ((this._email != value))
			{
				this.OnemailChanging(value);
				this.SendPropertyChanging();
				this._email = value;
				this.SendPropertyChanged("email");
				this.OnemailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_message", DbType="VarChar(300) NOT NULL", CanBeNull=false)]
	public string message
	{
		get
		{
			return this._message;
		}
		set
		{
			if ((this._message != value))
			{
				this.OnmessageChanging(value);
				this.SendPropertyChanging();
				this._message = value;
				this.SendPropertyChanged("message");
				this.OnmessageChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_newsletter", DbType="VarChar(10)")]
	public string newsletter
	{
		get
		{
			return this._newsletter;
		}
		set
		{
			if ((this._newsletter != value))
			{
				this.OnnewsletterChanging(value);
				this.SendPropertyChanging();
				this._newsletter = value;
				this.SendPropertyChanged("newsletter");
				this.OnnewsletterChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
