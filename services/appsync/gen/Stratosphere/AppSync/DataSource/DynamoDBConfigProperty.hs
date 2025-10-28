module Stratosphere.AppSync.DataSource.DynamoDBConfigProperty (
        module Exports, DynamoDBConfigProperty(..),
        mkDynamoDBConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.DeltaSyncConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html>
    DynamoDBConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-awsregion>
                            awsRegion :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-deltasyncconfig>
                            deltaSyncConfig :: (Prelude.Maybe DeltaSyncConfigProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-tablename>
                            tableName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-usecallercredentials>
                            useCallerCredentials :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-versioned>
                            versioned :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DynamoDBConfigProperty
mkDynamoDBConfigProperty awsRegion tableName
  = DynamoDBConfigProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       tableName = tableName, deltaSyncConfig = Prelude.Nothing,
       useCallerCredentials = Prelude.Nothing,
       versioned = Prelude.Nothing}
instance ToResourceProperties DynamoDBConfigProperty where
  toResourceProperties DynamoDBConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.DynamoDBConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsRegion" JSON..= awsRegion, "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "DeltaSyncConfig" Prelude.<$> deltaSyncConfig,
                               (JSON..=) "UseCallerCredentials" Prelude.<$> useCallerCredentials,
                               (JSON..=) "Versioned" Prelude.<$> versioned]))}
instance JSON.ToJSON DynamoDBConfigProperty where
  toJSON DynamoDBConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsRegion" JSON..= awsRegion, "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "DeltaSyncConfig" Prelude.<$> deltaSyncConfig,
                  (JSON..=) "UseCallerCredentials" Prelude.<$> useCallerCredentials,
                  (JSON..=) "Versioned" Prelude.<$> versioned])))
instance Property "AwsRegion" DynamoDBConfigProperty where
  type PropertyType "AwsRegion" DynamoDBConfigProperty = Value Prelude.Text
  set newValue DynamoDBConfigProperty {..}
    = DynamoDBConfigProperty {awsRegion = newValue, ..}
instance Property "DeltaSyncConfig" DynamoDBConfigProperty where
  type PropertyType "DeltaSyncConfig" DynamoDBConfigProperty = DeltaSyncConfigProperty
  set newValue DynamoDBConfigProperty {..}
    = DynamoDBConfigProperty
        {deltaSyncConfig = Prelude.pure newValue, ..}
instance Property "TableName" DynamoDBConfigProperty where
  type PropertyType "TableName" DynamoDBConfigProperty = Value Prelude.Text
  set newValue DynamoDBConfigProperty {..}
    = DynamoDBConfigProperty {tableName = newValue, ..}
instance Property "UseCallerCredentials" DynamoDBConfigProperty where
  type PropertyType "UseCallerCredentials" DynamoDBConfigProperty = Value Prelude.Bool
  set newValue DynamoDBConfigProperty {..}
    = DynamoDBConfigProperty
        {useCallerCredentials = Prelude.pure newValue, ..}
instance Property "Versioned" DynamoDBConfigProperty where
  type PropertyType "Versioned" DynamoDBConfigProperty = Value Prelude.Bool
  set newValue DynamoDBConfigProperty {..}
    = DynamoDBConfigProperty {versioned = Prelude.pure newValue, ..}