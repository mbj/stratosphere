module Stratosphere.AppSync.FunctionConfiguration (
        module Exports, FunctionConfiguration(..), mkFunctionConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.FunctionConfiguration.AppSyncRuntimeProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.FunctionConfiguration.SyncConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionConfiguration
  = FunctionConfiguration {apiId :: (Value Prelude.Text),
                           code :: (Prelude.Maybe (Value Prelude.Text)),
                           codeS3Location :: (Prelude.Maybe (Value Prelude.Text)),
                           dataSourceName :: (Value Prelude.Text),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           functionVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           maxBatchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                           name :: (Value Prelude.Text),
                           requestMappingTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                           requestMappingTemplateS3Location :: (Prelude.Maybe (Value Prelude.Text)),
                           responseMappingTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                           responseMappingTemplateS3Location :: (Prelude.Maybe (Value Prelude.Text)),
                           runtime :: (Prelude.Maybe AppSyncRuntimeProperty),
                           syncConfig :: (Prelude.Maybe SyncConfigProperty)}
mkFunctionConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FunctionConfiguration
mkFunctionConfiguration apiId dataSourceName name
  = FunctionConfiguration
      {apiId = apiId, dataSourceName = dataSourceName, name = name,
       code = Prelude.Nothing, codeS3Location = Prelude.Nothing,
       description = Prelude.Nothing, functionVersion = Prelude.Nothing,
       maxBatchSize = Prelude.Nothing,
       requestMappingTemplate = Prelude.Nothing,
       requestMappingTemplateS3Location = Prelude.Nothing,
       responseMappingTemplate = Prelude.Nothing,
       responseMappingTemplateS3Location = Prelude.Nothing,
       runtime = Prelude.Nothing, syncConfig = Prelude.Nothing}
instance ToResourceProperties FunctionConfiguration where
  toResourceProperties FunctionConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::FunctionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "DataSourceName" JSON..= dataSourceName,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Code" Prelude.<$> code,
                               (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FunctionVersion" Prelude.<$> functionVersion,
                               (JSON..=) "MaxBatchSize" Prelude.<$> maxBatchSize,
                               (JSON..=) "RequestMappingTemplate"
                                 Prelude.<$> requestMappingTemplate,
                               (JSON..=) "RequestMappingTemplateS3Location"
                                 Prelude.<$> requestMappingTemplateS3Location,
                               (JSON..=) "ResponseMappingTemplate"
                                 Prelude.<$> responseMappingTemplate,
                               (JSON..=) "ResponseMappingTemplateS3Location"
                                 Prelude.<$> responseMappingTemplateS3Location,
                               (JSON..=) "Runtime" Prelude.<$> runtime,
                               (JSON..=) "SyncConfig" Prelude.<$> syncConfig]))}
instance JSON.ToJSON FunctionConfiguration where
  toJSON FunctionConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "DataSourceName" JSON..= dataSourceName,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Code" Prelude.<$> code,
                  (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FunctionVersion" Prelude.<$> functionVersion,
                  (JSON..=) "MaxBatchSize" Prelude.<$> maxBatchSize,
                  (JSON..=) "RequestMappingTemplate"
                    Prelude.<$> requestMappingTemplate,
                  (JSON..=) "RequestMappingTemplateS3Location"
                    Prelude.<$> requestMappingTemplateS3Location,
                  (JSON..=) "ResponseMappingTemplate"
                    Prelude.<$> responseMappingTemplate,
                  (JSON..=) "ResponseMappingTemplateS3Location"
                    Prelude.<$> responseMappingTemplateS3Location,
                  (JSON..=) "Runtime" Prelude.<$> runtime,
                  (JSON..=) "SyncConfig" Prelude.<$> syncConfig])))
instance Property "ApiId" FunctionConfiguration where
  type PropertyType "ApiId" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {apiId = newValue, ..}
instance Property "Code" FunctionConfiguration where
  type PropertyType "Code" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {code = Prelude.pure newValue, ..}
instance Property "CodeS3Location" FunctionConfiguration where
  type PropertyType "CodeS3Location" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {codeS3Location = Prelude.pure newValue, ..}
instance Property "DataSourceName" FunctionConfiguration where
  type PropertyType "DataSourceName" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {dataSourceName = newValue, ..}
instance Property "Description" FunctionConfiguration where
  type PropertyType "Description" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {description = Prelude.pure newValue, ..}
instance Property "FunctionVersion" FunctionConfiguration where
  type PropertyType "FunctionVersion" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {functionVersion = Prelude.pure newValue, ..}
instance Property "MaxBatchSize" FunctionConfiguration where
  type PropertyType "MaxBatchSize" FunctionConfiguration = Value Prelude.Integer
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {maxBatchSize = Prelude.pure newValue, ..}
instance Property "Name" FunctionConfiguration where
  type PropertyType "Name" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {name = newValue, ..}
instance Property "RequestMappingTemplate" FunctionConfiguration where
  type PropertyType "RequestMappingTemplate" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {requestMappingTemplate = Prelude.pure newValue, ..}
instance Property "RequestMappingTemplateS3Location" FunctionConfiguration where
  type PropertyType "RequestMappingTemplateS3Location" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {requestMappingTemplateS3Location = Prelude.pure newValue, ..}
instance Property "ResponseMappingTemplate" FunctionConfiguration where
  type PropertyType "ResponseMappingTemplate" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {responseMappingTemplate = Prelude.pure newValue, ..}
instance Property "ResponseMappingTemplateS3Location" FunctionConfiguration where
  type PropertyType "ResponseMappingTemplateS3Location" FunctionConfiguration = Value Prelude.Text
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration
        {responseMappingTemplateS3Location = Prelude.pure newValue, ..}
instance Property "Runtime" FunctionConfiguration where
  type PropertyType "Runtime" FunctionConfiguration = AppSyncRuntimeProperty
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {runtime = Prelude.pure newValue, ..}
instance Property "SyncConfig" FunctionConfiguration where
  type PropertyType "SyncConfig" FunctionConfiguration = SyncConfigProperty
  set newValue FunctionConfiguration {..}
    = FunctionConfiguration {syncConfig = Prelude.pure newValue, ..}