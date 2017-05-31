//-----------------------------------------------------------------------
// <copyright file="Class1Test.cs" company="Devfactory">
//     Copyright (c) This is for testing.
// </copyright>
// <summary>This is the unit test class.</summary>
//-----------------------------------------------------------------------

namespace Manual_Tooled_CSharp
{
	using System;
	using NUnit.Framework;
	
	[TestFixture]
	public class Class1Test
	{	
		/// <summary>
    	/// Unit test for testing the value of name set.
    	/// </summary>		
		[Test]		
		public void GetNamePositiveTest1()
		{
			// test
			Class1 testOb = new Class1("Test", 12);
			Assert.IsNotNull(testOb.GetName());
		}
	}
}
