//-----------------------------------------------------------------------
// <copyright file="${res:XML.StandardHeader.File} ${FILE}" company="Devfactory">
//     Copyright (c) This is for testing.
// User: Laavanya
// Date: 11/19/2015
// Time: 8:24 PM
// </copyright>
// <summary>This is the ${res:XML.StandardHeader.File} ${FILE} class.</summary>
//-----------------------------------------------------------------------

using System;
using System.Collections.Generic;
using Microsoft.CodeAnalysis.Text;
 
namespace Microsoft.CodeAnalysis.Shared.Extensions
{
     internal static class IComparerExtensions
    {
        public static IComparer<T> Inverse<T>(this IComparer<T> comparer)
        {
            if (comparer == null)
            {
                throw new ArgumentNullException(nameof(comparer));
            }
 
            return new InverseComparer<T>(comparer);
        }
 
        private class InverseComparer<T> : IComparer<T>
        {
            private readonly IComparer<T> _comparer;
 
            internal InverseComparer(IComparer<T> comparer)
            {
                _comparer = comparer;
            }
 
            public int Compare(T x, T y)
            {
                 return _comparer.Compare(y, x);
            }
        }
    }
}
