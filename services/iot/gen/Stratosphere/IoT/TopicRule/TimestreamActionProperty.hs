module Stratosphere.IoT.TopicRule.TimestreamActionProperty (
        module Exports, TimestreamActionProperty(..),
        mkTimestreamActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.TimestreamDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.TimestreamTimestampProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamActionProperty
  = TimestreamActionProperty {databaseName :: (Value Prelude.Text),
                              dimensions :: [TimestreamDimensionProperty],
                              roleArn :: (Value Prelude.Text),
                              tableName :: (Value Prelude.Text),
                              timestamp :: (Prelude.Maybe TimestreamTimestampProperty)}
mkTimestreamActionProperty ::
  Value Prelude.Text
  -> [TimestreamDimensionProperty]
     -> Value Prelude.Text
        -> Value Prelude.Text -> TimestreamActionProperty
mkTimestreamActionProperty
  databaseName
  dimensions
  roleArn
  tableName
  = TimestreamActionProperty
      {databaseName = databaseName, dimensions = dimensions,
       roleArn = roleArn, tableName = tableName,
       timestamp = Prelude.Nothing}
instance ToResourceProperties TimestreamActionProperty where
  toResourceProperties TimestreamActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.TimestreamAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "Dimensions" JSON..= dimensions, "RoleArn" JSON..= roleArn,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes [(JSON..=) "Timestamp" Prelude.<$> timestamp]))}
instance JSON.ToJSON TimestreamActionProperty where
  toJSON TimestreamActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "Dimensions" JSON..= dimensions, "RoleArn" JSON..= roleArn,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes [(JSON..=) "Timestamp" Prelude.<$> timestamp])))
instance Property "DatabaseName" TimestreamActionProperty where
  type PropertyType "DatabaseName" TimestreamActionProperty = Value Prelude.Text
  set newValue TimestreamActionProperty {..}
    = TimestreamActionProperty {databaseName = newValue, ..}
instance Property "Dimensions" TimestreamActionProperty where
  type PropertyType "Dimensions" TimestreamActionProperty = [TimestreamDimensionProperty]
  set newValue TimestreamActionProperty {..}
    = TimestreamActionProperty {dimensions = newValue, ..}
instance Property "RoleArn" TimestreamActionProperty where
  type PropertyType "RoleArn" TimestreamActionProperty = Value Prelude.Text
  set newValue TimestreamActionProperty {..}
    = TimestreamActionProperty {roleArn = newValue, ..}
instance Property "TableName" TimestreamActionProperty where
  type PropertyType "TableName" TimestreamActionProperty = Value Prelude.Text
  set newValue TimestreamActionProperty {..}
    = TimestreamActionProperty {tableName = newValue, ..}
instance Property "Timestamp" TimestreamActionProperty where
  type PropertyType "Timestamp" TimestreamActionProperty = TimestreamTimestampProperty
  set newValue TimestreamActionProperty {..}
    = TimestreamActionProperty {timestamp = Prelude.pure newValue, ..}