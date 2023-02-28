module Stratosphere.AppFlow.Flow.SnowflakeDestinationPropertiesProperty (
        module Exports, SnowflakeDestinationPropertiesProperty(..),
        mkSnowflakeDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeDestinationPropertiesProperty
  = SnowflakeDestinationPropertiesProperty {bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                            errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                            intermediateBucketName :: (Value Prelude.Text),
                                            object :: (Value Prelude.Text)}
mkSnowflakeDestinationPropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SnowflakeDestinationPropertiesProperty
mkSnowflakeDestinationPropertiesProperty
  intermediateBucketName
  object
  = SnowflakeDestinationPropertiesProperty
      {intermediateBucketName = intermediateBucketName, object = object,
       bucketPrefix = Prelude.Nothing,
       errorHandlingConfig = Prelude.Nothing}
instance ToResourceProperties SnowflakeDestinationPropertiesProperty where
  toResourceProperties SnowflakeDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SnowflakeDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IntermediateBucketName" JSON..= intermediateBucketName,
                            "Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig]))}
instance JSON.ToJSON SnowflakeDestinationPropertiesProperty where
  toJSON SnowflakeDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IntermediateBucketName" JSON..= intermediateBucketName,
               "Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig])))
instance Property "BucketPrefix" SnowflakeDestinationPropertiesProperty where
  type PropertyType "BucketPrefix" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "ErrorHandlingConfig" SnowflakeDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" SnowflakeDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IntermediateBucketName" SnowflakeDestinationPropertiesProperty where
  type PropertyType "IntermediateBucketName" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {intermediateBucketName = newValue, ..}
instance Property "Object" SnowflakeDestinationPropertiesProperty where
  type PropertyType "Object" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty {object = newValue, ..}