module Stratosphere.S3Express.DirectoryBucket (
        module Exports, DirectoryBucket(..), mkDirectoryBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.BucketEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.LifecycleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryBucket
  = DirectoryBucket {bucketEncryption :: (Prelude.Maybe BucketEncryptionProperty),
                     bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                     dataRedundancy :: (Value Prelude.Text),
                     lifecycleConfiguration :: (Prelude.Maybe LifecycleConfigurationProperty),
                     locationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectoryBucket ::
  Value Prelude.Text -> Value Prelude.Text -> DirectoryBucket
mkDirectoryBucket dataRedundancy locationName
  = DirectoryBucket
      {dataRedundancy = dataRedundancy, locationName = locationName,
       bucketEncryption = Prelude.Nothing, bucketName = Prelude.Nothing,
       lifecycleConfiguration = Prelude.Nothing}
instance ToResourceProperties DirectoryBucket where
  toResourceProperties DirectoryBucket {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::DirectoryBucket",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataRedundancy" JSON..= dataRedundancy,
                            "LocationName" JSON..= locationName]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketEncryption" Prelude.<$> bucketEncryption,
                               (JSON..=) "BucketName" Prelude.<$> bucketName,
                               (JSON..=) "LifecycleConfiguration"
                                 Prelude.<$> lifecycleConfiguration]))}
instance JSON.ToJSON DirectoryBucket where
  toJSON DirectoryBucket {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataRedundancy" JSON..= dataRedundancy,
               "LocationName" JSON..= locationName]
              (Prelude.catMaybes
                 [(JSON..=) "BucketEncryption" Prelude.<$> bucketEncryption,
                  (JSON..=) "BucketName" Prelude.<$> bucketName,
                  (JSON..=) "LifecycleConfiguration"
                    Prelude.<$> lifecycleConfiguration])))
instance Property "BucketEncryption" DirectoryBucket where
  type PropertyType "BucketEncryption" DirectoryBucket = BucketEncryptionProperty
  set newValue DirectoryBucket {..}
    = DirectoryBucket {bucketEncryption = Prelude.pure newValue, ..}
instance Property "BucketName" DirectoryBucket where
  type PropertyType "BucketName" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {bucketName = Prelude.pure newValue, ..}
instance Property "DataRedundancy" DirectoryBucket where
  type PropertyType "DataRedundancy" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {dataRedundancy = newValue, ..}
instance Property "LifecycleConfiguration" DirectoryBucket where
  type PropertyType "LifecycleConfiguration" DirectoryBucket = LifecycleConfigurationProperty
  set newValue DirectoryBucket {..}
    = DirectoryBucket
        {lifecycleConfiguration = Prelude.pure newValue, ..}
instance Property "LocationName" DirectoryBucket where
  type PropertyType "LocationName" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {locationName = newValue, ..}