module Stratosphere.AppFlow.Flow.UpsolverDestinationPropertiesProperty (
        module Exports, UpsolverDestinationPropertiesProperty(..),
        mkUpsolverDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.UpsolverS3OutputFormatConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpsolverDestinationPropertiesProperty
  = UpsolverDestinationPropertiesProperty {bucketName :: (Value Prelude.Text),
                                           bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                           s3OutputFormatConfig :: UpsolverS3OutputFormatConfigProperty}
mkUpsolverDestinationPropertiesProperty ::
  Value Prelude.Text
  -> UpsolverS3OutputFormatConfigProperty
     -> UpsolverDestinationPropertiesProperty
mkUpsolverDestinationPropertiesProperty
  bucketName
  s3OutputFormatConfig
  = UpsolverDestinationPropertiesProperty
      {bucketName = bucketName,
       s3OutputFormatConfig = s3OutputFormatConfig,
       bucketPrefix = Prelude.Nothing}
instance ToResourceProperties UpsolverDestinationPropertiesProperty where
  toResourceProperties UpsolverDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.UpsolverDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName,
                            "S3OutputFormatConfig" JSON..= s3OutputFormatConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix]))}
instance JSON.ToJSON UpsolverDestinationPropertiesProperty where
  toJSON UpsolverDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName,
               "S3OutputFormatConfig" JSON..= s3OutputFormatConfig]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix])))
instance Property "BucketName" UpsolverDestinationPropertiesProperty where
  type PropertyType "BucketName" UpsolverDestinationPropertiesProperty = Value Prelude.Text
  set newValue UpsolverDestinationPropertiesProperty {..}
    = UpsolverDestinationPropertiesProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" UpsolverDestinationPropertiesProperty where
  type PropertyType "BucketPrefix" UpsolverDestinationPropertiesProperty = Value Prelude.Text
  set newValue UpsolverDestinationPropertiesProperty {..}
    = UpsolverDestinationPropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "S3OutputFormatConfig" UpsolverDestinationPropertiesProperty where
  type PropertyType "S3OutputFormatConfig" UpsolverDestinationPropertiesProperty = UpsolverS3OutputFormatConfigProperty
  set newValue UpsolverDestinationPropertiesProperty {..}
    = UpsolverDestinationPropertiesProperty
        {s3OutputFormatConfig = newValue, ..}