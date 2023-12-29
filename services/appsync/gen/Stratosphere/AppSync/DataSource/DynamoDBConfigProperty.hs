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
  = DynamoDBConfigProperty {awsRegion :: (Value Prelude.Text),
                            deltaSyncConfig :: (Prelude.Maybe DeltaSyncConfigProperty),
                            tableName :: (Value Prelude.Text),
                            useCallerCredentials :: (Prelude.Maybe (Value Prelude.Bool)),
                            versioned :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DynamoDBConfigProperty
mkDynamoDBConfigProperty awsRegion tableName
  = DynamoDBConfigProperty
      {awsRegion = awsRegion, tableName = tableName,
       deltaSyncConfig = Prelude.Nothing,
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