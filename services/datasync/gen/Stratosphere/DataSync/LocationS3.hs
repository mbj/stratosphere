module Stratosphere.DataSync.LocationS3 (
        module Exports, LocationS3(..), mkLocationS3
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationS3.S3ConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationS3
  = LocationS3 {s3BucketArn :: (Prelude.Maybe (Value Prelude.Text)),
                s3Config :: S3ConfigProperty,
                s3StorageClass :: (Prelude.Maybe (Value Prelude.Text)),
                subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationS3 :: S3ConfigProperty -> LocationS3
mkLocationS3 s3Config
  = LocationS3
      {s3Config = s3Config, s3BucketArn = Prelude.Nothing,
       s3StorageClass = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationS3 where
  toResourceProperties LocationS3 {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationS3",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Config" JSON..= s3Config]
                           (Prelude.catMaybes
                              [(JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn,
                               (JSON..=) "S3StorageClass" Prelude.<$> s3StorageClass,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationS3 where
  toJSON LocationS3 {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Config" JSON..= s3Config]
              (Prelude.catMaybes
                 [(JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn,
                  (JSON..=) "S3StorageClass" Prelude.<$> s3StorageClass,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "S3BucketArn" LocationS3 where
  type PropertyType "S3BucketArn" LocationS3 = Value Prelude.Text
  set newValue LocationS3 {..}
    = LocationS3 {s3BucketArn = Prelude.pure newValue, ..}
instance Property "S3Config" LocationS3 where
  type PropertyType "S3Config" LocationS3 = S3ConfigProperty
  set newValue LocationS3 {..} = LocationS3 {s3Config = newValue, ..}
instance Property "S3StorageClass" LocationS3 where
  type PropertyType "S3StorageClass" LocationS3 = Value Prelude.Text
  set newValue LocationS3 {..}
    = LocationS3 {s3StorageClass = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationS3 where
  type PropertyType "Subdirectory" LocationS3 = Value Prelude.Text
  set newValue LocationS3 {..}
    = LocationS3 {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationS3 where
  type PropertyType "Tags" LocationS3 = [Tag]
  set newValue LocationS3 {..}
    = LocationS3 {tags = Prelude.pure newValue, ..}