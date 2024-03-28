module Stratosphere.S3Express.DirectoryBucket (
        DirectoryBucket(..), mkDirectoryBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryBucket
  = DirectoryBucket {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                     dataRedundancy :: (Value Prelude.Text),
                     locationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectoryBucket ::
  Value Prelude.Text -> Value Prelude.Text -> DirectoryBucket
mkDirectoryBucket dataRedundancy locationName
  = DirectoryBucket
      {dataRedundancy = dataRedundancy, locationName = locationName,
       bucketName = Prelude.Nothing}
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
                              [(JSON..=) "BucketName" Prelude.<$> bucketName]))}
instance JSON.ToJSON DirectoryBucket where
  toJSON DirectoryBucket {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataRedundancy" JSON..= dataRedundancy,
               "LocationName" JSON..= locationName]
              (Prelude.catMaybes
                 [(JSON..=) "BucketName" Prelude.<$> bucketName])))
instance Property "BucketName" DirectoryBucket where
  type PropertyType "BucketName" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {bucketName = Prelude.pure newValue, ..}
instance Property "DataRedundancy" DirectoryBucket where
  type PropertyType "DataRedundancy" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {dataRedundancy = newValue, ..}
instance Property "LocationName" DirectoryBucket where
  type PropertyType "LocationName" DirectoryBucket = Value Prelude.Text
  set newValue DirectoryBucket {..}
    = DirectoryBucket {locationName = newValue, ..}