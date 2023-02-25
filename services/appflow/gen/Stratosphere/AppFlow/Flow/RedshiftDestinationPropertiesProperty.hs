module Stratosphere.AppFlow.Flow.RedshiftDestinationPropertiesProperty (
        module Exports, RedshiftDestinationPropertiesProperty(..),
        mkRedshiftDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftDestinationPropertiesProperty
  = RedshiftDestinationPropertiesProperty {bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                           errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                           intermediateBucketName :: (Value Prelude.Text),
                                           object :: (Value Prelude.Text)}
mkRedshiftDestinationPropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RedshiftDestinationPropertiesProperty
mkRedshiftDestinationPropertiesProperty
  intermediateBucketName
  object
  = RedshiftDestinationPropertiesProperty
      {intermediateBucketName = intermediateBucketName, object = object,
       bucketPrefix = Prelude.Nothing,
       errorHandlingConfig = Prelude.Nothing}
instance ToResourceProperties RedshiftDestinationPropertiesProperty where
  toResourceProperties RedshiftDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.RedshiftDestinationProperties",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IntermediateBucketName" JSON..= intermediateBucketName,
                            "Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig]))}
instance JSON.ToJSON RedshiftDestinationPropertiesProperty where
  toJSON RedshiftDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IntermediateBucketName" JSON..= intermediateBucketName,
               "Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig])))
instance Property "BucketPrefix" RedshiftDestinationPropertiesProperty where
  type PropertyType "BucketPrefix" RedshiftDestinationPropertiesProperty = Value Prelude.Text
  set newValue RedshiftDestinationPropertiesProperty {..}
    = RedshiftDestinationPropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "ErrorHandlingConfig" RedshiftDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" RedshiftDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue RedshiftDestinationPropertiesProperty {..}
    = RedshiftDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IntermediateBucketName" RedshiftDestinationPropertiesProperty where
  type PropertyType "IntermediateBucketName" RedshiftDestinationPropertiesProperty = Value Prelude.Text
  set newValue RedshiftDestinationPropertiesProperty {..}
    = RedshiftDestinationPropertiesProperty
        {intermediateBucketName = newValue, ..}
instance Property "Object" RedshiftDestinationPropertiesProperty where
  type PropertyType "Object" RedshiftDestinationPropertiesProperty = Value Prelude.Text
  set newValue RedshiftDestinationPropertiesProperty {..}
    = RedshiftDestinationPropertiesProperty {object = newValue, ..}