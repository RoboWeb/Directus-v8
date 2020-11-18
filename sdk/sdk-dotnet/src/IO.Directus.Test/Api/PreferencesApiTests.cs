/* 
 * directus.io
 *
 * API for directus.io
 *
 * OpenAPI spec version: 1.1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Directus.Client;
using IO.Directus.Api;
using IO.Directus.Model;

namespace IO.Directus.Test
{
    /// <summary>
    ///  Class for testing PreferencesApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class PreferencesApiTests
    {
        private PreferencesApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new PreferencesApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of PreferencesApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' PreferencesApi
            //Assert.IsInstanceOfType(typeof(PreferencesApi), instance, "instance is a PreferencesApi");
        }

        
        /// <summary>
        /// Test GetPreferences
        /// </summary>
        [Test]
        public void GetPreferencesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string tableId = null;
            //var response = instance.GetPreferences(tableId);
            //Assert.IsInstanceOf<GetPreferences> (response, "response is GetPreferences");
        }
        
        /// <summary>
        /// Test UpdatePreferences
        /// </summary>
        [Test]
        public void UpdatePreferencesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string tableId = null;
            //string id = null;
            //string tableName = null;
            //string columnsVisible = null;
            //int? sort = null;
            //string sortOrder = null;
            //string status = null;
            //instance.UpdatePreferences(tableId, id, tableName, columnsVisible, sort, sortOrder, status);
            
        }
        
    }

}
