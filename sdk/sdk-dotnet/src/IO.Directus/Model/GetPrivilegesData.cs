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
    /// GetPrivilegesData
    /// </summary>
    [DataContract]
    public partial class GetPrivilegesData :  IEquatable<GetPrivilegesData>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetPrivilegesData" /> class.
        /// </summary>
        /// <param name="Id">Id.</param>
        /// <param name="TableName">TableName.</param>
        /// <param name="GroupId">GroupId.</param>
        /// <param name="ReadFieldBlacklist">ReadFieldBlacklist.</param>
        /// <param name="WriteFieldBlacklist">WriteFieldBlacklist.</param>
        /// <param name="NavListed">NavListed.</param>
        /// <param name="StatusId">StatusId.</param>
        /// <param name="AllowView">AllowView.</param>
        /// <param name="AllowAdd">AllowAdd.</param>
        /// <param name="AllowEdit">AllowEdit.</param>
        /// <param name="AllowDelete">AllowDelete.</param>
        /// <param name="AllowAlter">AllowAlter.</param>
        public GetPrivilegesData(int? Id = default(int?), string TableName = default(string), int? GroupId = default(int?), string ReadFieldBlacklist = default(string), string WriteFieldBlacklist = default(string), int? NavListed = default(int?), int? StatusId = default(int?), int? AllowView = default(int?), int? AllowAdd = default(int?), int? AllowEdit = default(int?), int? AllowDelete = default(int?), int? AllowAlter = default(int?))
        {
            this.Id = Id;
            this.TableName = TableName;
            this.GroupId = GroupId;
            this.ReadFieldBlacklist = ReadFieldBlacklist;
            this.WriteFieldBlacklist = WriteFieldBlacklist;
            this.NavListed = NavListed;
            this.StatusId = StatusId;
            this.AllowView = AllowView;
            this.AllowAdd = AllowAdd;
            this.AllowEdit = AllowEdit;
            this.AllowDelete = AllowDelete;
            this.AllowAlter = AllowAlter;
        }
        
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int? Id { get; set; }

        /// <summary>
        /// Gets or Sets TableName
        /// </summary>
        [DataMember(Name="table_name", EmitDefaultValue=false)]
        public string TableName { get; set; }

        /// <summary>
        /// Gets or Sets GroupId
        /// </summary>
        [DataMember(Name="group_id", EmitDefaultValue=false)]
        public int? GroupId { get; set; }

        /// <summary>
        /// Gets or Sets ReadFieldBlacklist
        /// </summary>
        [DataMember(Name="read_field_blacklist", EmitDefaultValue=false)]
        public string ReadFieldBlacklist { get; set; }

        /// <summary>
        /// Gets or Sets WriteFieldBlacklist
        /// </summary>
        [DataMember(Name="write_field_blacklist", EmitDefaultValue=false)]
        public string WriteFieldBlacklist { get; set; }

        /// <summary>
        /// Gets or Sets NavListed
        /// </summary>
        [DataMember(Name="nav_listed", EmitDefaultValue=false)]
        public int? NavListed { get; set; }

        /// <summary>
        /// Gets or Sets StatusId
        /// </summary>
        [DataMember(Name="status_id", EmitDefaultValue=false)]
        public int? StatusId { get; set; }

        /// <summary>
        /// Gets or Sets AllowView
        /// </summary>
        [DataMember(Name="allow_view", EmitDefaultValue=false)]
        public int? AllowView { get; set; }

        /// <summary>
        /// Gets or Sets AllowAdd
        /// </summary>
        [DataMember(Name="allow_add", EmitDefaultValue=false)]
        public int? AllowAdd { get; set; }

        /// <summary>
        /// Gets or Sets AllowEdit
        /// </summary>
        [DataMember(Name="allow_edit", EmitDefaultValue=false)]
        public int? AllowEdit { get; set; }

        /// <summary>
        /// Gets or Sets AllowDelete
        /// </summary>
        [DataMember(Name="allow_delete", EmitDefaultValue=false)]
        public int? AllowDelete { get; set; }

        /// <summary>
        /// Gets or Sets AllowAlter
        /// </summary>
        [DataMember(Name="allow_alter", EmitDefaultValue=false)]
        public int? AllowAlter { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class GetPrivilegesData {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  TableName: ").Append(TableName).Append("\n");
            sb.Append("  GroupId: ").Append(GroupId).Append("\n");
            sb.Append("  ReadFieldBlacklist: ").Append(ReadFieldBlacklist).Append("\n");
            sb.Append("  WriteFieldBlacklist: ").Append(WriteFieldBlacklist).Append("\n");
            sb.Append("  NavListed: ").Append(NavListed).Append("\n");
            sb.Append("  StatusId: ").Append(StatusId).Append("\n");
            sb.Append("  AllowView: ").Append(AllowView).Append("\n");
            sb.Append("  AllowAdd: ").Append(AllowAdd).Append("\n");
            sb.Append("  AllowEdit: ").Append(AllowEdit).Append("\n");
            sb.Append("  AllowDelete: ").Append(AllowDelete).Append("\n");
            sb.Append("  AllowAlter: ").Append(AllowAlter).Append("\n");
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
            return this.Equals(input as GetPrivilegesData);
        }

        /// <summary>
        /// Returns true if GetPrivilegesData instances are equal
        /// </summary>
        /// <param name="input">Instance of GetPrivilegesData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GetPrivilegesData input)
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
                    this.TableName == input.TableName ||
                    (this.TableName != null &&
                    this.TableName.Equals(input.TableName))
                ) && 
                (
                    this.GroupId == input.GroupId ||
                    (this.GroupId != null &&
                    this.GroupId.Equals(input.GroupId))
                ) && 
                (
                    this.ReadFieldBlacklist == input.ReadFieldBlacklist ||
                    (this.ReadFieldBlacklist != null &&
                    this.ReadFieldBlacklist.Equals(input.ReadFieldBlacklist))
                ) && 
                (
                    this.WriteFieldBlacklist == input.WriteFieldBlacklist ||
                    (this.WriteFieldBlacklist != null &&
                    this.WriteFieldBlacklist.Equals(input.WriteFieldBlacklist))
                ) && 
                (
                    this.NavListed == input.NavListed ||
                    (this.NavListed != null &&
                    this.NavListed.Equals(input.NavListed))
                ) && 
                (
                    this.StatusId == input.StatusId ||
                    (this.StatusId != null &&
                    this.StatusId.Equals(input.StatusId))
                ) && 
                (
                    this.AllowView == input.AllowView ||
                    (this.AllowView != null &&
                    this.AllowView.Equals(input.AllowView))
                ) && 
                (
                    this.AllowAdd == input.AllowAdd ||
                    (this.AllowAdd != null &&
                    this.AllowAdd.Equals(input.AllowAdd))
                ) && 
                (
                    this.AllowEdit == input.AllowEdit ||
                    (this.AllowEdit != null &&
                    this.AllowEdit.Equals(input.AllowEdit))
                ) && 
                (
                    this.AllowDelete == input.AllowDelete ||
                    (this.AllowDelete != null &&
                    this.AllowDelete.Equals(input.AllowDelete))
                ) && 
                (
                    this.AllowAlter == input.AllowAlter ||
                    (this.AllowAlter != null &&
                    this.AllowAlter.Equals(input.AllowAlter))
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
                if (this.TableName != null)
                    hashCode = hashCode * 59 + this.TableName.GetHashCode();
                if (this.GroupId != null)
                    hashCode = hashCode * 59 + this.GroupId.GetHashCode();
                if (this.ReadFieldBlacklist != null)
                    hashCode = hashCode * 59 + this.ReadFieldBlacklist.GetHashCode();
                if (this.WriteFieldBlacklist != null)
                    hashCode = hashCode * 59 + this.WriteFieldBlacklist.GetHashCode();
                if (this.NavListed != null)
                    hashCode = hashCode * 59 + this.NavListed.GetHashCode();
                if (this.StatusId != null)
                    hashCode = hashCode * 59 + this.StatusId.GetHashCode();
                if (this.AllowView != null)
                    hashCode = hashCode * 59 + this.AllowView.GetHashCode();
                if (this.AllowAdd != null)
                    hashCode = hashCode * 59 + this.AllowAdd.GetHashCode();
                if (this.AllowEdit != null)
                    hashCode = hashCode * 59 + this.AllowEdit.GetHashCode();
                if (this.AllowDelete != null)
                    hashCode = hashCode * 59 + this.AllowDelete.GetHashCode();
                if (this.AllowAlter != null)
                    hashCode = hashCode * 59 + this.AllowAlter.GetHashCode();
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
