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
import java.util.ArrayList;
import java.util.List;

/**
 * GetTableData
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2017-10-03T21:48:16.590Z")
public class GetTableData {
  @SerializedName("name")
  private String name = null;

  @SerializedName("id")
  private String id = null;

  @SerializedName("table_name")
  private String tableName = null;

  @SerializedName("columns")
  private List<Object> columns = null;

  @SerializedName("preferences")
  private Object preferences = null;

  @SerializedName("primary_column")
  private String primaryColumn = null;

  @SerializedName("schema")
  private String schema = null;

  @SerializedName("hidden")
  private Boolean hidden = null;

  @SerializedName("single")
  private Boolean single = null;

  @SerializedName("default_status")
  private String defaultStatus = null;

  @SerializedName("user_create_column")
  private String userCreateColumn = null;

  @SerializedName("user_update_column")
  private String userUpdateColumn = null;

  @SerializedName("date_create_column")
  private String dateCreateColumn = null;

  @SerializedName("date_update_column")
  private String dateUpdateColumn = null;

  @SerializedName("created_at")
  private String createdAt = null;

  @SerializedName("date_created")
  private String dateCreated = null;

  @SerializedName("comment")
  private String comment = null;

  @SerializedName("row_count")
  private Integer rowCount = null;

  @SerializedName("footer")
  private Boolean footer = null;

  @SerializedName("list_view")
  private String listView = null;

  @SerializedName("column_groupings")
  private String columnGroupings = null;

  @SerializedName("filter_column_blacklist")
  private String filterColumnBlacklist = null;

  public GetTableData name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GetTableData id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public GetTableData tableName(String tableName) {
    this.tableName = tableName;
    return this;
  }

   /**
   * Get tableName
   * @return tableName
  **/
  @ApiModelProperty(value = "")
  public String getTableName() {
    return tableName;
  }

  public void setTableName(String tableName) {
    this.tableName = tableName;
  }

  public GetTableData columns(List<Object> columns) {
    this.columns = columns;
    return this;
  }

  public GetTableData addColumnsItem(Object columnsItem) {
    if (this.columns == null) {
      this.columns = new ArrayList<Object>();
    }
    this.columns.add(columnsItem);
    return this;
  }

   /**
   * Get columns
   * @return columns
  **/
  @ApiModelProperty(value = "")
  public List<Object> getColumns() {
    return columns;
  }

  public void setColumns(List<Object> columns) {
    this.columns = columns;
  }

  public GetTableData preferences(Object preferences) {
    this.preferences = preferences;
    return this;
  }

   /**
   * Get preferences
   * @return preferences
  **/
  @ApiModelProperty(value = "")
  public Object getPreferences() {
    return preferences;
  }

  public void setPreferences(Object preferences) {
    this.preferences = preferences;
  }

  public GetTableData primaryColumn(String primaryColumn) {
    this.primaryColumn = primaryColumn;
    return this;
  }

   /**
   * Get primaryColumn
   * @return primaryColumn
  **/
  @ApiModelProperty(value = "")
  public String getPrimaryColumn() {
    return primaryColumn;
  }

  public void setPrimaryColumn(String primaryColumn) {
    this.primaryColumn = primaryColumn;
  }

  public GetTableData schema(String schema) {
    this.schema = schema;
    return this;
  }

   /**
   * Get schema
   * @return schema
  **/
  @ApiModelProperty(value = "")
  public String getSchema() {
    return schema;
  }

  public void setSchema(String schema) {
    this.schema = schema;
  }

  public GetTableData hidden(Boolean hidden) {
    this.hidden = hidden;
    return this;
  }

   /**
   * Get hidden
   * @return hidden
  **/
  @ApiModelProperty(value = "")
  public Boolean isHidden() {
    return hidden;
  }

  public void setHidden(Boolean hidden) {
    this.hidden = hidden;
  }

  public GetTableData single(Boolean single) {
    this.single = single;
    return this;
  }

   /**
   * Get single
   * @return single
  **/
  @ApiModelProperty(value = "")
  public Boolean isSingle() {
    return single;
  }

  public void setSingle(Boolean single) {
    this.single = single;
  }

  public GetTableData defaultStatus(String defaultStatus) {
    this.defaultStatus = defaultStatus;
    return this;
  }

   /**
   * Get defaultStatus
   * @return defaultStatus
  **/
  @ApiModelProperty(value = "")
  public String getDefaultStatus() {
    return defaultStatus;
  }

  public void setDefaultStatus(String defaultStatus) {
    this.defaultStatus = defaultStatus;
  }

  public GetTableData userCreateColumn(String userCreateColumn) {
    this.userCreateColumn = userCreateColumn;
    return this;
  }

   /**
   * Get userCreateColumn
   * @return userCreateColumn
  **/
  @ApiModelProperty(value = "")
  public String getUserCreateColumn() {
    return userCreateColumn;
  }

  public void setUserCreateColumn(String userCreateColumn) {
    this.userCreateColumn = userCreateColumn;
  }

  public GetTableData userUpdateColumn(String userUpdateColumn) {
    this.userUpdateColumn = userUpdateColumn;
    return this;
  }

   /**
   * Get userUpdateColumn
   * @return userUpdateColumn
  **/
  @ApiModelProperty(value = "")
  public String getUserUpdateColumn() {
    return userUpdateColumn;
  }

  public void setUserUpdateColumn(String userUpdateColumn) {
    this.userUpdateColumn = userUpdateColumn;
  }

  public GetTableData dateCreateColumn(String dateCreateColumn) {
    this.dateCreateColumn = dateCreateColumn;
    return this;
  }

   /**
   * Get dateCreateColumn
   * @return dateCreateColumn
  **/
  @ApiModelProperty(value = "")
  public String getDateCreateColumn() {
    return dateCreateColumn;
  }

  public void setDateCreateColumn(String dateCreateColumn) {
    this.dateCreateColumn = dateCreateColumn;
  }

  public GetTableData dateUpdateColumn(String dateUpdateColumn) {
    this.dateUpdateColumn = dateUpdateColumn;
    return this;
  }

   /**
   * Get dateUpdateColumn
   * @return dateUpdateColumn
  **/
  @ApiModelProperty(value = "")
  public String getDateUpdateColumn() {
    return dateUpdateColumn;
  }

  public void setDateUpdateColumn(String dateUpdateColumn) {
    this.dateUpdateColumn = dateUpdateColumn;
  }

  public GetTableData createdAt(String createdAt) {
    this.createdAt = createdAt;
    return this;
  }

   /**
   * Get createdAt
   * @return createdAt
  **/
  @ApiModelProperty(value = "")
  public String getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(String createdAt) {
    this.createdAt = createdAt;
  }

  public GetTableData dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

   /**
   * Get dateCreated
   * @return dateCreated
  **/
  @ApiModelProperty(value = "")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public GetTableData comment(String comment) {
    this.comment = comment;
    return this;
  }

   /**
   * Get comment
   * @return comment
  **/
  @ApiModelProperty(value = "")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public GetTableData rowCount(Integer rowCount) {
    this.rowCount = rowCount;
    return this;
  }

   /**
   * Get rowCount
   * @return rowCount
  **/
  @ApiModelProperty(value = "")
  public Integer getRowCount() {
    return rowCount;
  }

  public void setRowCount(Integer rowCount) {
    this.rowCount = rowCount;
  }

  public GetTableData footer(Boolean footer) {
    this.footer = footer;
    return this;
  }

   /**
   * Get footer
   * @return footer
  **/
  @ApiModelProperty(value = "")
  public Boolean isFooter() {
    return footer;
  }

  public void setFooter(Boolean footer) {
    this.footer = footer;
  }

  public GetTableData listView(String listView) {
    this.listView = listView;
    return this;
  }

   /**
   * Get listView
   * @return listView
  **/
  @ApiModelProperty(value = "")
  public String getListView() {
    return listView;
  }

  public void setListView(String listView) {
    this.listView = listView;
  }

  public GetTableData columnGroupings(String columnGroupings) {
    this.columnGroupings = columnGroupings;
    return this;
  }

   /**
   * Get columnGroupings
   * @return columnGroupings
  **/
  @ApiModelProperty(value = "")
  public String getColumnGroupings() {
    return columnGroupings;
  }

  public void setColumnGroupings(String columnGroupings) {
    this.columnGroupings = columnGroupings;
  }

  public GetTableData filterColumnBlacklist(String filterColumnBlacklist) {
    this.filterColumnBlacklist = filterColumnBlacklist;
    return this;
  }

   /**
   * Get filterColumnBlacklist
   * @return filterColumnBlacklist
  **/
  @ApiModelProperty(value = "")
  public String getFilterColumnBlacklist() {
    return filterColumnBlacklist;
  }

  public void setFilterColumnBlacklist(String filterColumnBlacklist) {
    this.filterColumnBlacklist = filterColumnBlacklist;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetTableData getTableData = (GetTableData) o;
    return Objects.equals(this.name, getTableData.name) &&
        Objects.equals(this.id, getTableData.id) &&
        Objects.equals(this.tableName, getTableData.tableName) &&
        Objects.equals(this.columns, getTableData.columns) &&
        Objects.equals(this.preferences, getTableData.preferences) &&
        Objects.equals(this.primaryColumn, getTableData.primaryColumn) &&
        Objects.equals(this.schema, getTableData.schema) &&
        Objects.equals(this.hidden, getTableData.hidden) &&
        Objects.equals(this.single, getTableData.single) &&
        Objects.equals(this.defaultStatus, getTableData.defaultStatus) &&
        Objects.equals(this.userCreateColumn, getTableData.userCreateColumn) &&
        Objects.equals(this.userUpdateColumn, getTableData.userUpdateColumn) &&
        Objects.equals(this.dateCreateColumn, getTableData.dateCreateColumn) &&
        Objects.equals(this.dateUpdateColumn, getTableData.dateUpdateColumn) &&
        Objects.equals(this.createdAt, getTableData.createdAt) &&
        Objects.equals(this.dateCreated, getTableData.dateCreated) &&
        Objects.equals(this.comment, getTableData.comment) &&
        Objects.equals(this.rowCount, getTableData.rowCount) &&
        Objects.equals(this.footer, getTableData.footer) &&
        Objects.equals(this.listView, getTableData.listView) &&
        Objects.equals(this.columnGroupings, getTableData.columnGroupings) &&
        Objects.equals(this.filterColumnBlacklist, getTableData.filterColumnBlacklist);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, id, tableName, columns, preferences, primaryColumn, schema, hidden, single, defaultStatus, userCreateColumn, userUpdateColumn, dateCreateColumn, dateUpdateColumn, createdAt, dateCreated, comment, rowCount, footer, listView, columnGroupings, filterColumnBlacklist);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetTableData {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    tableName: ").append(toIndentedString(tableName)).append("\n");
    sb.append("    columns: ").append(toIndentedString(columns)).append("\n");
    sb.append("    preferences: ").append(toIndentedString(preferences)).append("\n");
    sb.append("    primaryColumn: ").append(toIndentedString(primaryColumn)).append("\n");
    sb.append("    schema: ").append(toIndentedString(schema)).append("\n");
    sb.append("    hidden: ").append(toIndentedString(hidden)).append("\n");
    sb.append("    single: ").append(toIndentedString(single)).append("\n");
    sb.append("    defaultStatus: ").append(toIndentedString(defaultStatus)).append("\n");
    sb.append("    userCreateColumn: ").append(toIndentedString(userCreateColumn)).append("\n");
    sb.append("    userUpdateColumn: ").append(toIndentedString(userUpdateColumn)).append("\n");
    sb.append("    dateCreateColumn: ").append(toIndentedString(dateCreateColumn)).append("\n");
    sb.append("    dateUpdateColumn: ").append(toIndentedString(dateUpdateColumn)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
    sb.append("    rowCount: ").append(toIndentedString(rowCount)).append("\n");
    sb.append("    footer: ").append(toIndentedString(footer)).append("\n");
    sb.append("    listView: ").append(toIndentedString(listView)).append("\n");
    sb.append("    columnGroupings: ").append(toIndentedString(columnGroupings)).append("\n");
    sb.append("    filterColumnBlacklist: ").append(toIndentedString(filterColumnBlacklist)).append("\n");
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

