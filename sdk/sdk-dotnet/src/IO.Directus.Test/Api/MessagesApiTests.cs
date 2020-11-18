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
    ///  Class for testing MessagesApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class MessagesApiTests
    {
        private MessagesApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new MessagesApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of MessagesApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' MessagesApi
            //Assert.IsInstanceOfType(typeof(MessagesApi), instance, "instance is a MessagesApi");
        }

        
        /// <summary>
        /// Test GetMessage
        /// </summary>
        [Test]
        public void GetMessageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? messageId = null;
            //var response = instance.GetMessage(messageId);
            //Assert.IsInstanceOf<GetMessage> (response, "response is GetMessage");
        }
        
        /// <summary>
        /// Test GetMessages
        /// </summary>
        [Test]
        public void GetMessagesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.GetMessages();
            //Assert.IsInstanceOf<GetMessages> (response, "response is GetMessages");
        }
        
    }

}
