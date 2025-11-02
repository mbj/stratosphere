module Stratosphere.S3.Bucket.PartitionedPrefixProperty (
        PartitionedPrefixProperty(..), mkPartitionedPrefixProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartitionedPrefixProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-partitionedprefix.html>
    PartitionedPrefixProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-partitionedprefix.html#cfn-s3-bucket-partitionedprefix-partitiondatesource>
                               partitionDateSource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionedPrefixProperty :: PartitionedPrefixProperty
mkPartitionedPrefixProperty
  = PartitionedPrefixProperty
      {haddock_workaround_ = (), partitionDateSource = Prelude.Nothing}
instance ToResourceProperties PartitionedPrefixProperty where
  toResourceProperties PartitionedPrefixProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.PartitionedPrefix",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PartitionDateSource" Prelude.<$> partitionDateSource])}
instance JSON.ToJSON PartitionedPrefixProperty where
  toJSON PartitionedPrefixProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PartitionDateSource" Prelude.<$> partitionDateSource]))
instance Property "PartitionDateSource" PartitionedPrefixProperty where
  type PropertyType "PartitionDateSource" PartitionedPrefixProperty = Value Prelude.Text
  set newValue PartitionedPrefixProperty {..}
    = PartitionedPrefixProperty
        {partitionDateSource = Prelude.pure newValue, ..}