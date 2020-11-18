/*
 * directus.io
 * API for directus.io
 *
 * OpenAPI spec version: 1.1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.directus.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * GetActivityMeta
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2017-10-03T21:48:16.590Z")
public class GetActivityMeta {
  @SerializedName("total")
  private Integer total = null;

  @SerializedName("type")
  private String type = null;

  @SerializedName("table")
  private String table = null;

  public GetActivityMeta total(Integer total) {
    this.total = total;
    return this;
  }

   /**
   * Get total
   * @return total
  **/
  @ApiModelProperty(value = "")
  public Integer getTotal() {
    return total;
  }

  public void setTotal(Integer total) {
    this.total = total;
  }

  public GetActivityMeta type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @ApiModelProperty(value = "")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public GetActivityMeta table(String table) {
    this.table = table;
    return this;
  }

   /**
   * Get table
   * @return table
  **/
  @ApiModelProperty(value = "")
  public String getTable() {
    return table;
  }

  public void setTable(String table) {
    this.table = table;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetActivityMeta getActivityMeta = (GetActivityMeta) o;
    return Objects.equals(this.total, getActivityMeta.total) &&
        Objects.equals(this.type, getActivityMeta.type) &&
        Objects.equals(this.table, getActivityMeta.table);
  }

  @Override
  public int hashCode() {
    return Objects.hash(total, type, table);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetActivityMeta {\n");
    
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    table: ").append(toIndentedString(table)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

