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
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Directus.Client.SwaggerDateConverter;

namespace IO.Directus.Model
{
    /// <summary>
    /// GetBookmarksData
    /// </summary>
    [DataContract]
    public partial class GetBookmarksData :  IEquatable<GetBookmarksData>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetBookmarksData" /> class.
        /// </summary>
        /// <param name="Id">Id.</param>
        /// <param name="User">User.</param>
        /// <param name="Title">Title.</param>
        /// <param name="Url">Url.</param>
        /// <param name="IconClass">IconClass.</param>
        /// <param name="Active">Active.</param>
        /// <param name="Section">Section.</param>
        public GetBookmarksData(int? Id = default(int?), int? User = default(int?), string Title = default(string), string Url = default(string), string IconClass = default(string), string Active = default(string), string Section = default(string))
        {
            this.Id = Id;
            this.User = User;
            this.Title = Title;
            this.Url = Url;
            this.IconClass = IconClass;
            this.Active = Active;
            this.Section = Section;
        }
        
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int? Id { get; set; }

        /// <summary>
        /// Gets or Sets User
        /// </summary>
        [DataMember(Name="user", EmitDefaultValue=false)]
        public int? User { get; set; }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name="title", EmitDefaultValue=false)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets IconClass
        /// </summary>
        [DataMember(Name="icon_class", EmitDefaultValue=false)]
        public string IconClass { get; set; }

        /// <summary>
        /// Gets or Sets Active
        /// </summary>
        [DataMember(Name="active", EmitDefaultValue=false)]
        public string Active { get; set; }

        /// <summary>
        /// Gets or Sets Section
        /// </summary>
        [DataMember(Name="section", EmitDefaultValue=false)]
        public string Section { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class GetBookmarksData {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  User: ").Append(User).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  IconClass: ").Append(IconClass).Append("\n");
            sb.Append("  Active: ").Append(Active).Append("\n");
            sb.Append("  Section: ").Append(Section).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as GetBookmarksData);
        }

        /// <summary>
        /// Returns true if GetBookmarksData instances are equal
        /// </summary>
        /// <param name="input">Instance of GetBookmarksData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GetBookmarksData input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.User == input.User ||
                    (this.User != null &&
                    this.User.Equals(input.User))
                ) && 
                (
                    this.Title == input.Title ||
                    (this.Title != null &&
                    this.Title.Equals(input.Title))
                ) && 
                (
                    this.Url == input.Url ||
                    (this.Url != null &&
                    this.Url.Equals(input.Url))
                ) && 
                (
                    this.IconClass == input.IconClass ||
                    (this.IconClass != null &&
                    this.IconClass.Equals(input.IconClass))
                ) && 
                (
                    this.Active == input.Active ||
                    (this.Active != null &&
                    this.Active.Equals(input.Active))
                ) && 
                (
                    this.Section == input.Section ||
                    (this.Section != null &&
                    this.Section.Equals(input.Section))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.User != null)
                    hashCode = hashCode * 59 + this.User.GetHashCode();
                if (this.Title != null)
                    hashCode = hashCode * 59 + this.Title.GetHashCode();
                if (this.Url != null)
                    hashCode = hashCode * 59 + this.Url.GetHashCode();
                if (this.IconClass != null)
                    hashCode = hashCode * 59 + this.IconClass.GetHashCode();
                if (this.Active != null)
                    hashCode = hashCode * 59 + this.Active.GetHashCode();
                if (this.Section != null)
                    hashCode = hashCode * 59 + this.Section.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
