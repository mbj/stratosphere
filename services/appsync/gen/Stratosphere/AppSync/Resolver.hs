module Stratosphere.AppSync.Resolver (
        module Exports, Resolver(..), mkResolver
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.Resolver.AppSyncRuntimeProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Resolver.CachingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Resolver.PipelineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Resolver.SyncConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Resolver
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html>
    Resolver {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-apiid>
              apiId :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-cachingconfig>
              cachingConfig :: (Prelude.Maybe CachingConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-code>
              code :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-codes3location>
              codeS3Location :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-datasourcename>
              dataSourceName :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-fieldname>
              fieldName :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-kind>
              kind :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-maxbatchsize>
              maxBatchSize :: (Prelude.Maybe (Value Prelude.Integer)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-metricsconfig>
              metricsConfig :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-pipelineconfig>
              pipelineConfig :: (Prelude.Maybe PipelineConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplate>
              requestMappingTemplate :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplates3location>
              requestMappingTemplateS3Location :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplate>
              responseMappingTemplate :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplates3location>
              responseMappingTemplateS3Location :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-runtime>
              runtime :: (Prelude.Maybe AppSyncRuntimeProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-syncconfig>
              syncConfig :: (Prelude.Maybe SyncConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-typename>
              typeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolver ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Resolver
mkResolver apiId fieldName typeName
  = Resolver
      {apiId = apiId, fieldName = fieldName, typeName = typeName,
       cachingConfig = Prelude.Nothing, code = Prelude.Nothing,
       codeS3Location = Prelude.Nothing, dataSourceName = Prelude.Nothing,
       kind = Prelude.Nothing, maxBatchSize = Prelude.Nothing,
       metricsConfig = Prelude.Nothing, pipelineConfig = Prelude.Nothing,
       requestMappingTemplate = Prelude.Nothing,
       requestMappingTemplateS3Location = Prelude.Nothing,
       responseMappingTemplate = Prelude.Nothing,
       responseMappingTemplateS3Location = Prelude.Nothing,
       runtime = Prelude.Nothing, syncConfig = Prelude.Nothing}
instance ToResourceProperties Resolver where
  toResourceProperties Resolver {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "FieldName" JSON..= fieldName,
                            "TypeName" JSON..= typeName]
                           (Prelude.catMaybes
                              [(JSON..=) "CachingConfig" Prelude.<$> cachingConfig,
                               (JSON..=) "Code" Prelude.<$> code,
                               (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                               (JSON..=) "DataSourceName" Prelude.<$> dataSourceName,
                               (JSON..=) "Kind" Prelude.<$> kind,
                               (JSON..=) "MaxBatchSize" Prelude.<$> maxBatchSize,
                               (JSON..=) "MetricsConfig" Prelude.<$> metricsConfig,
                               (JSON..=) "PipelineConfig" Prelude.<$> pipelineConfig,
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
instance JSON.ToJSON Resolver where
  toJSON Resolver {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "FieldName" JSON..= fieldName,
               "TypeName" JSON..= typeName]
              (Prelude.catMaybes
                 [(JSON..=) "CachingConfig" Prelude.<$> cachingConfig,
                  (JSON..=) "Code" Prelude.<$> code,
                  (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                  (JSON..=) "DataSourceName" Prelude.<$> dataSourceName,
                  (JSON..=) "Kind" Prelude.<$> kind,
                  (JSON..=) "MaxBatchSize" Prelude.<$> maxBatchSize,
                  (JSON..=) "MetricsConfig" Prelude.<$> metricsConfig,
                  (JSON..=) "PipelineConfig" Prelude.<$> pipelineConfig,
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
instance Property "ApiId" Resolver where
  type PropertyType "ApiId" Resolver = Value Prelude.Text
  set newValue Resolver {..} = Resolver {apiId = newValue, ..}
instance Property "CachingConfig" Resolver where
  type PropertyType "CachingConfig" Resolver = CachingConfigProperty
  set newValue Resolver {..}
    = Resolver {cachingConfig = Prelude.pure newValue, ..}
instance Property "Code" Resolver where
  type PropertyType "Code" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {code = Prelude.pure newValue, ..}
instance Property "CodeS3Location" Resolver where
  type PropertyType "CodeS3Location" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {codeS3Location = Prelude.pure newValue, ..}
instance Property "DataSourceName" Resolver where
  type PropertyType "DataSourceName" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {dataSourceName = Prelude.pure newValue, ..}
instance Property "FieldName" Resolver where
  type PropertyType "FieldName" Resolver = Value Prelude.Text
  set newValue Resolver {..} = Resolver {fieldName = newValue, ..}
instance Property "Kind" Resolver where
  type PropertyType "Kind" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {kind = Prelude.pure newValue, ..}
instance Property "MaxBatchSize" Resolver where
  type PropertyType "MaxBatchSize" Resolver = Value Prelude.Integer
  set newValue Resolver {..}
    = Resolver {maxBatchSize = Prelude.pure newValue, ..}
instance Property "MetricsConfig" Resolver where
  type PropertyType "MetricsConfig" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {metricsConfig = Prelude.pure newValue, ..}
instance Property "PipelineConfig" Resolver where
  type PropertyType "PipelineConfig" Resolver = PipelineConfigProperty
  set newValue Resolver {..}
    = Resolver {pipelineConfig = Prelude.pure newValue, ..}
instance Property "RequestMappingTemplate" Resolver where
  type PropertyType "RequestMappingTemplate" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {requestMappingTemplate = Prelude.pure newValue, ..}
instance Property "RequestMappingTemplateS3Location" Resolver where
  type PropertyType "RequestMappingTemplateS3Location" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver
        {requestMappingTemplateS3Location = Prelude.pure newValue, ..}
instance Property "ResponseMappingTemplate" Resolver where
  type PropertyType "ResponseMappingTemplate" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver {responseMappingTemplate = Prelude.pure newValue, ..}
instance Property "ResponseMappingTemplateS3Location" Resolver where
  type PropertyType "ResponseMappingTemplateS3Location" Resolver = Value Prelude.Text
  set newValue Resolver {..}
    = Resolver
        {responseMappingTemplateS3Location = Prelude.pure newValue, ..}
instance Property "Runtime" Resolver where
  type PropertyType "Runtime" Resolver = AppSyncRuntimeProperty
  set newValue Resolver {..}
    = Resolver {runtime = Prelude.pure newValue, ..}
instance Property "SyncConfig" Resolver where
  type PropertyType "SyncConfig" Resolver = SyncConfigProperty
  set newValue Resolver {..}
    = Resolver {syncConfig = Prelude.pure newValue, ..}
instance Property "TypeName" Resolver where
  type PropertyType "TypeName" Resolver = Value Prelude.Text
  set newValue Resolver {..} = Resolver {typeName = newValue, ..}