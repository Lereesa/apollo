using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Text;

namespace simpletest_LereesaNaidoo
{
    public class HashAlgorithm
    {
        public static string HashPassword(string pass)
        {
            //hash algorithm decleration
            SHA1 hashAlgorithm = SHA1.Create();

            //byte array to store the returned data
            //convert the input string to a byte array and compute the hash
            byte[] hashData = hashAlgorithm.ComputeHash(Encoding.Default.GetBytes(pass));

            //instance of the stringbuilder to store hashed data
            StringBuilder hashedpass = new StringBuilder();

            //Loop through each byte of the hashed data and format each one into a hexadecimal string
            for (int i = 0; i < hashData.Length; i++)
            {
                hashedpass.Append(hashData[i].ToString());
            }

            //return hexadecimal string
            return hashedpass.ToString();
        }
    }
}