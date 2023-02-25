module Stratosphere.AppSync.DataSource (
        module Exports, DataSource(..), mkDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.DynamoDBConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.ElasticsearchConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.EventBridgeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.HttpConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.LambdaConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.OpenSearchServiceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.RelationalDatabaseConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSource
  = DataSource {apiId :: (Value Prelude.Text),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                dynamoDBConfig :: (Prelude.Maybe DynamoDBConfigProperty),
                elasticsearchConfig :: (Prelude.Maybe ElasticsearchConfigProperty),
                eventBridgeConfig :: (Prelude.Maybe EventBridgeConfigProperty),
                httpConfig :: (Prelude.Maybe HttpConfigProperty),
                lambdaConfig :: (Prelude.Maybe LambdaConfigProperty),
                name :: (Value Prelude.Text),
                openSearchServiceConfig :: (Prelude.Maybe OpenSearchServiceConfigProperty),
                relationalDatabaseConfig :: (Prelude.Maybe RelationalDatabaseConfigProperty),
                serviceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                type' :: (Value Prelude.Text)}
mkDataSource ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DataSource
mkDataSource apiId name type'
  = DataSource
      {apiId = apiId, name = name, type' = type',
       description = Prelude.Nothing, dynamoDBConfig = Prelude.Nothing,
       elasticsearchConfig = Prelude.Nothing,
       eventBridgeConfig = Prelude.Nothing, httpConfig = Prelude.Nothing,
       lambdaConfig = Prelude.Nothing,
       openSearchServiceConfig = Prelude.Nothing,
       relationalDatabaseConfig = Prelude.Nothing,
       serviceRoleArn = Prelude.Nothing}
instance ToResourceProperties DataSource where
  toResourceProperties DataSource {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DynamoDBConfig" Prelude.<$> dynamoDBConfig,
                               (JSON..=) "ElasticsearchConfig" Prelude.<$> elasticsearchConfig,
                               (JSON..=) "EventBridgeConfig" Prelude.<$> eventBridgeConfig,
                               (JSON..=) "HttpConfig" Prelude.<$> httpConfig,
                               (JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig,
                               (JSON..=) "OpenSearchServiceConfig"
                                 Prelude.<$> openSearchServiceConfig,
                               (JSON..=) "RelationalDatabaseConfig"
                                 Prelude.<$> relationalDatabaseConfig,
                               (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn]))}
instance JSON.ToJSON DataSource where
  toJSON DataSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DynamoDBConfig" Prelude.<$> dynamoDBConfig,
                  (JSON..=) "ElasticsearchConfig" Prelude.<$> elasticsearchConfig,
                  (JSON..=) "EventBridgeConfig" Prelude.<$> eventBridgeConfig,
                  (JSON..=) "HttpConfig" Prelude.<$> httpConfig,
                  (JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig,
                  (JSON..=) "OpenSearchServiceConfig"
                    Prelude.<$> openSearchServiceConfig,
                  (JSON..=) "RelationalDatabaseConfig"
                    Prelude.<$> relationalDatabaseConfig,
                  (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn])))
instance Property "ApiId" DataSource where
  type PropertyType "ApiId" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {apiId = newValue, ..}
instance Property "Description" DataSource where
  type PropertyType "Description" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {description = Prelude.pure newValue, ..}
instance Property "DynamoDBConfig" DataSource where
  type PropertyType "DynamoDBConfig" DataSource = DynamoDBConfigProperty
  set newValue DataSource {..}
    = DataSource {dynamoDBConfig = Prelude.pure newValue, ..}
instance Property "ElasticsearchConfig" DataSource where
  type PropertyType "ElasticsearchConfig" DataSource = ElasticsearchConfigProperty
  set newValue DataSource {..}
    = DataSource {elasticsearchConfig = Prelude.pure newValue, ..}
instance Property "EventBridgeConfig" DataSource where
  type PropertyType "EventBridgeConfig" DataSource = EventBridgeConfigProperty
  set newValue DataSource {..}
    = DataSource {eventBridgeConfig = Prelude.pure newValue, ..}
instance Property "HttpConfig" DataSource where
  type PropertyType "HttpConfig" DataSource = HttpConfigProperty
  set newValue DataSource {..}
    = DataSource {httpConfig = Prelude.pure newValue, ..}
instance Property "LambdaConfig" DataSource where
  type PropertyType "LambdaConfig" DataSource = LambdaConfigProperty
  set newValue DataSource {..}
    = DataSource {lambdaConfig = Prelude.pure newValue, ..}
instance Property "Name" DataSource where
  type PropertyType "Name" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {name = newValue, ..}
instance Property "OpenSearchServiceConfig" DataSource where
  type PropertyType "OpenSearchServiceConfig" DataSource = OpenSearchServiceConfigProperty
  set newValue DataSource {..}
    = DataSource {openSearchServiceConfig = Prelude.pure newValue, ..}
instance Property "RelationalDatabaseConfig" DataSource where
  type PropertyType "RelationalDatabaseConfig" DataSource = RelationalDatabaseConfigProperty
  set newValue DataSource {..}
    = DataSource {relationalDatabaseConfig = Prelude.pure newValue, ..}
instance Property "ServiceRoleArn" DataSource where
  type PropertyType "ServiceRoleArn" DataSource = Value Prelude.Text
  set newValue DataSource {..}
    = DataSource {serviceRoleArn = Prelude.pure newValue, ..}
instance Property "Type" DataSource where
  type PropertyType "Type" DataSource = Value Prelude.Text
  set newValue DataSource {..} = DataSource {type' = newValue, ..}