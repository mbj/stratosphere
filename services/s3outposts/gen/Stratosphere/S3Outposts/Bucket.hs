module Stratosphere.S3Outposts.Bucket (
        module Exports, Bucket(..), mkBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.LifecycleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Bucket
  = Bucket {bucketName :: (Value Prelude.Text),
            lifecycleConfiguration :: (Prelude.Maybe LifecycleConfigurationProperty),
            outpostId :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucket :: Value Prelude.Text -> Value Prelude.Text -> Bucket
mkBucket bucketName outpostId
  = Bucket
      {bucketName = bucketName, outpostId = outpostId,
       lifecycleConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Bucket where
  toResourceProperties Bucket {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName, "OutpostId" JSON..= outpostId]
                           (Prelude.catMaybes
                              [(JSON..=) "LifecycleConfiguration"
                                 Prelude.<$> lifecycleConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Bucket where
  toJSON Bucket {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName, "OutpostId" JSON..= outpostId]
              (Prelude.catMaybes
                 [(JSON..=) "LifecycleConfiguration"
                    Prelude.<$> lifecycleConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BucketName" Bucket where
  type PropertyType "BucketName" Bucket = Value Prelude.Text
  set newValue Bucket {..} = Bucket {bucketName = newValue, ..}
instance Property "LifecycleConfiguration" Bucket where
  type PropertyType "LifecycleConfiguration" Bucket = LifecycleConfigurationProperty
  set newValue Bucket {..}
    = Bucket {lifecycleConfiguration = Prelude.pure newValue, ..}
instance Property "OutpostId" Bucket where
  type PropertyType "OutpostId" Bucket = Value Prelude.Text
  set newValue Bucket {..} = Bucket {outpostId = newValue, ..}
instance Property "Tags" Bucket where
  type PropertyType "Tags" Bucket = [Tag]
  set newValue Bucket {..}
    = Bucket {tags = Prelude.pure newValue, ..}