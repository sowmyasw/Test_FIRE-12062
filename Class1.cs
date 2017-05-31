//-----------------------------------------------------------------------
// <copyright file="Class1.cs" company="Devfactory">
//     Copyright (c) This is for testing.
// </copyright>
// <summary>This is the Class1 class.</summary>
//-----------------------------------------------------------------------

using System;

namespace Manual_Tooled_CSharp
{
    /// <summary>
    /// Simple class for smoke testing.
    /// </summary>
    public class Class1
    {
        readonly string myName;
        readonly int myAge;    
        
    
        /// <summary>
        /// Initializes a new instance of the Class1 class.
        /// </summary>
        /// <param name="name">The name to set.</param>
        /// <param name="age">The age to set.</param>
        
        public Class1(string name, int age)
        {
            myName = name;
            myAge = age;
        }

        /// <summary>
        /// To get the name from the class.
        /// </summary>        
        /// <returns>class variable myName.</returns>
        public string GetName()
        {
            return myName;
        }

        /// <summary>
        /// To get the age from the class.
        /// </summary>        
        /// <returns>class variable myAge.</returns>
        public int GetAge()
        {
            return myAge;
        }

        public static void Main(string[] args)
        {

        }
    }
    
}