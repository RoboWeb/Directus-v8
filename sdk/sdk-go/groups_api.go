/* 
 * directus.io
 *
 * API for directus.io
 *
 * OpenAPI spec version: 1.1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

package directussdk

import (
	"net/url"
	"net/http"
	"strings"
	"golang.org/x/net/context"
	"encoding/json"
	"fmt"
)

// Linger please
var (
	_ context.Context
)

type GroupsApiService service


/* GroupsApiService Add a new group
 * @param ctx context.Context Authentication Context 
 @param optional (nil or map[string]interface{}) with one or more of:
     @param "name" (string) Name of group to add
 @return */
func (a *GroupsApiService) AddGroup(ctx context.Context, localVarOptionals map[string]interface{}) ( *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Post")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/groups"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if err := typeCheckParameter(localVarOptionals["name"], "string", "name"); err != nil {
		return nil, err
	}

	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/x-www-form-urlencoded",  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if localVarTempParam, localVarOk := localVarOptionals["name"].(string); localVarOk {
		localVarFormParams.Add("name", parameterToString(localVarTempParam, ""))
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	return localVarHttpResponse, err
}

/* GroupsApiService Create new table privileges for the specified user group
 * @param ctx context.Context Authentication Context 
 @param groupId ID of group to return
 @param optional (nil or map[string]interface{}) with one or more of:
     @param "id" (int32) Privilege&#39;s Unique Identification number
     @param "tableName" (string) Name of table to add
     @param "allowAdd" (int32) Permission to add/create entries in the table (See values below)
     @param "allowEdit" (int32) Permission to edit/update entries in the table (See values below)
     @param "allowDelete" (int32) Permission to delete/remove entries in the table (See values below)
     @param "allowView" (int32) Permission to view/read entries in the table (See values below)
     @param "allowAlter" (int32) Permission to add/create entries in the table (See values below)
     @param "navListed" (bool) If the table should be visible in the sidebar for this user group
     @param "readFieldBlacklist" (string) A CSV of column names that the group can&#39;t view (read)
     @param "writeFieldBlacklist" (string) A CSV of column names that the group can&#39;t edit (update)
     @param "statusId" (string) State of the record that this permissions belongs to (Draft, Active or Soft Deleted)
 @return */
func (a *GroupsApiService) AddPrivilege(ctx context.Context, groupId string, localVarOptionals map[string]interface{}) ( *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Post")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/privileges/{groupId}"
	localVarPath = strings.Replace(localVarPath, "{"+"groupId"+"}", fmt.Sprintf("%v", groupId), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if err := typeCheckParameter(localVarOptionals["id"], "int32", "id"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["tableName"], "string", "tableName"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowAdd"], "int32", "allowAdd"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowEdit"], "int32", "allowEdit"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowDelete"], "int32", "allowDelete"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowView"], "int32", "allowView"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowAlter"], "int32", "allowAlter"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["navListed"], "bool", "navListed"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["readFieldBlacklist"], "string", "readFieldBlacklist"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["writeFieldBlacklist"], "string", "writeFieldBlacklist"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["statusId"], "string", "statusId"); err != nil {
		return nil, err
	}

	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/x-www-form-urlencoded",  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if localVarTempParam, localVarOk := localVarOptionals["id"].(int32); localVarOk {
		localVarFormParams.Add("id", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["tableName"].(string); localVarOk {
		localVarFormParams.Add("table_name", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowAdd"].(int32); localVarOk {
		localVarFormParams.Add("allow_add", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowEdit"].(int32); localVarOk {
		localVarFormParams.Add("allow_edit", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowDelete"].(int32); localVarOk {
		localVarFormParams.Add("allow_delete", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowView"].(int32); localVarOk {
		localVarFormParams.Add("allow_view", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowAlter"].(int32); localVarOk {
		localVarFormParams.Add("allow_alter", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["navListed"].(bool); localVarOk {
		localVarFormParams.Add("nav_listed", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["readFieldBlacklist"].(string); localVarOk {
		localVarFormParams.Add("read_field_blacklist", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["writeFieldBlacklist"].(string); localVarOk {
		localVarFormParams.Add("write_field_blacklist", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["statusId"].(string); localVarOk {
		localVarFormParams.Add("status_id", parameterToString(localVarTempParam, ""))
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	return localVarHttpResponse, err
}

/* GroupsApiService Returns specific group
 * @param ctx context.Context Authentication Context 
 @param groupId ID of group to return
 @return GetGroup*/
func (a *GroupsApiService) GetGroup(ctx context.Context, groupId string) (GetGroup,  *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Get")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	 	successPayload  GetGroup
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/groups/{groupId}"
	localVarPath = strings.Replace(localVarPath, "{"+"groupId"+"}", fmt.Sprintf("%v", groupId), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return successPayload, nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return successPayload, localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return successPayload, localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	if err = json.NewDecoder(localVarHttpResponse.Body).Decode(&successPayload); err != nil {
	 	return successPayload, localVarHttpResponse, err
	}


	return successPayload, localVarHttpResponse, err
}

/* GroupsApiService Returns groups
 * @param ctx context.Context Authentication Context 
 @return GetGroups*/
func (a *GroupsApiService) GetGroups(ctx context.Context, ) (GetGroups,  *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Get")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	 	successPayload  GetGroups
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/groups"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return successPayload, nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return successPayload, localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return successPayload, localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	if err = json.NewDecoder(localVarHttpResponse.Body).Decode(&successPayload); err != nil {
	 	return successPayload, localVarHttpResponse, err
	}


	return successPayload, localVarHttpResponse, err
}

/* GroupsApiService Returns group privileges
 * @param ctx context.Context Authentication Context 
 @param groupId ID of group to return
 @return GetPrivileges*/
func (a *GroupsApiService) GetPrivileges(ctx context.Context, groupId string) (GetPrivileges,  *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Get")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	 	successPayload  GetPrivileges
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/privileges/{groupId}"
	localVarPath = strings.Replace(localVarPath, "{"+"groupId"+"}", fmt.Sprintf("%v", groupId), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return successPayload, nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return successPayload, localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return successPayload, localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	if err = json.NewDecoder(localVarHttpResponse.Body).Decode(&successPayload); err != nil {
	 	return successPayload, localVarHttpResponse, err
	}


	return successPayload, localVarHttpResponse, err
}

/* GroupsApiService Returns group privileges by tableName
 * @param ctx context.Context Authentication Context 
 @param groupId ID of group to return
 @param tableNameOrPrivilegeId ID of privileges or Table Name to use
 @return GetPrivilegesForTable*/
func (a *GroupsApiService) GetPrivilegesForTable(ctx context.Context, groupId string, tableNameOrPrivilegeId string) (GetPrivilegesForTable,  *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Get")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	 	successPayload  GetPrivilegesForTable
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/privileges/{groupId}/{tableNameOrPrivilegeId}"
	localVarPath = strings.Replace(localVarPath, "{"+"groupId"+"}", fmt.Sprintf("%v", groupId), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"tableNameOrPrivilegeId"+"}", fmt.Sprintf("%v", tableNameOrPrivilegeId), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}


	// to determine the Content-Type header
	localVarHttpContentTypes := []string{  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return successPayload, nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return successPayload, localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return successPayload, localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	if err = json.NewDecoder(localVarHttpResponse.Body).Decode(&successPayload); err != nil {
	 	return successPayload, localVarHttpResponse, err
	}


	return successPayload, localVarHttpResponse, err
}

/* GroupsApiService Update privileges by privilegeId
 * @param ctx context.Context Authentication Context 
 @param groupId ID of group to return
 @param tableNameOrPrivilegeId ID of privileges or Table Name to use
 @param optional (nil or map[string]interface{}) with one or more of:
     @param "privilegesId" (string) ubique privilege ID
     @param "groupId2" (string) ID of group to return
     @param "tableName" (string) Name of table to add
     @param "allowAdd" (int32) Permission to add/create entries in the table (See values below)
     @param "allowEdit" (int32) Permission to edit/update entries in the table (See values below)
     @param "allowDelete" (int32) Permission to delete/remove entries in the table (See values below)
     @param "allowView" (int32) Permission to view/read entries in the table (See values below)
     @param "allowAlter" (int32) Permission to add/create entries in the table (See values below)
     @param "navListed" (bool) If the table should be visible in the sidebar for this user group
     @param "readFieldBlacklist" (string) A CSV of column names that the group can&#39;t view (read)
     @param "writeFieldBlacklist" (string) A CSV of column names that the group can&#39;t edit (update)
     @param "statusId" (string) State of the record that this permissions belongs to (Draft, Active or Soft Deleted)
 @return */
func (a *GroupsApiService) UpdatePrivileges(ctx context.Context, groupId string, tableNameOrPrivilegeId string, localVarOptionals map[string]interface{}) ( *http.Response, error) {
	var (
		localVarHttpMethod = strings.ToUpper("Put")
		localVarPostBody interface{}
		localVarFileName string
		localVarFileBytes []byte
	)

	// create path and map variables
	localVarPath := a.client.cfg.BasePath + "/privileges/{groupId}/{tableNameOrPrivilegeId}"
	localVarPath = strings.Replace(localVarPath, "{"+"groupId"+"}", fmt.Sprintf("%v", groupId), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"tableNameOrPrivilegeId"+"}", fmt.Sprintf("%v", tableNameOrPrivilegeId), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if err := typeCheckParameter(localVarOptionals["privilegesId"], "string", "privilegesId"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["groupId2"], "string", "groupId2"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["tableName"], "string", "tableName"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowAdd"], "int32", "allowAdd"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowEdit"], "int32", "allowEdit"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowDelete"], "int32", "allowDelete"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowView"], "int32", "allowView"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["allowAlter"], "int32", "allowAlter"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["navListed"], "bool", "navListed"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["readFieldBlacklist"], "string", "readFieldBlacklist"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["writeFieldBlacklist"], "string", "writeFieldBlacklist"); err != nil {
		return nil, err
	}
	if err := typeCheckParameter(localVarOptionals["statusId"], "string", "statusId"); err != nil {
		return nil, err
	}

	// to determine the Content-Type header
	localVarHttpContentTypes := []string{ "application/x-www-form-urlencoded",  }

	// set Content-Type header
	localVarHttpContentType := selectHeaderContentType(localVarHttpContentTypes)
	if localVarHttpContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHttpContentType
	}

	// to determine the Accept header
	localVarHttpHeaderAccepts := []string{
		"application/json",
		}

	// set Accept header
	localVarHttpHeaderAccept := selectHeaderAccept(localVarHttpHeaderAccepts)
	if localVarHttpHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHttpHeaderAccept
	}
	if localVarTempParam, localVarOk := localVarOptionals["privilegesId"].(string); localVarOk {
		localVarFormParams.Add("privileges_id", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["groupId2"].(string); localVarOk {
		localVarFormParams.Add("group_id", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["tableName"].(string); localVarOk {
		localVarFormParams.Add("table_name", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowAdd"].(int32); localVarOk {
		localVarFormParams.Add("allow_add", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowEdit"].(int32); localVarOk {
		localVarFormParams.Add("allow_edit", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowDelete"].(int32); localVarOk {
		localVarFormParams.Add("allow_delete", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowView"].(int32); localVarOk {
		localVarFormParams.Add("allow_view", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["allowAlter"].(int32); localVarOk {
		localVarFormParams.Add("allow_alter", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["navListed"].(bool); localVarOk {
		localVarFormParams.Add("nav_listed", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["readFieldBlacklist"].(string); localVarOk {
		localVarFormParams.Add("read_field_blacklist", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["writeFieldBlacklist"].(string); localVarOk {
		localVarFormParams.Add("write_field_blacklist", parameterToString(localVarTempParam, ""))
	}
	if localVarTempParam, localVarOk := localVarOptionals["statusId"].(string); localVarOk {
		localVarFormParams.Add("status_id", parameterToString(localVarTempParam, ""))
	}
	if ctx != nil {
		// API Key Authentication
		if auth, ok := ctx.Value(ContextAPIKey).(APIKey); ok {
			var key string
			if auth.Prefix != "" {
				key = auth.Prefix + " " + auth.Key
			} else {
				key = auth.Key
			}
			localVarQueryParams["access_token"] = []string{ key }
		}
	}
	r, err := a.client.prepareRequest(ctx, localVarPath, localVarHttpMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, localVarFileName, localVarFileBytes)
	if err != nil {
		return nil, err
	}

	 localVarHttpResponse, err := a.client.callAPI(r)
	 if err != nil || localVarHttpResponse == nil {
		  return localVarHttpResponse, err
	 }
	 defer localVarHttpResponse.Body.Close()
	 if localVarHttpResponse.StatusCode >= 300 {
		return localVarHttpResponse, reportError(localVarHttpResponse.Status)
	 }

	return localVarHttpResponse, err
}

