module Stratosphere.S3Tables.TableBucketPolicy (
        TableBucketPolicy(..), mkTableBucketPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableBucketPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucketpolicy.html>
    TableBucketPolicy {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucketpolicy.html#cfn-s3tables-tablebucketpolicy-resourcepolicy>
                       resourcePolicy :: JSON.Object,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucketpolicy.html#cfn-s3tables-tablebucketpolicy-tablebucketarn>
                       tableBucketARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableBucketPolicy ::
  JSON.Object -> Value Prelude.Text -> TableBucketPolicy
mkTableBucketPolicy resourcePolicy tableBucketARN
  = TableBucketPolicy
      {haddock_workaround_ = (), resourcePolicy = resourcePolicy,
       tableBucketARN = tableBucketARN}
instance ToResourceProperties TableBucketPolicy where
  toResourceProperties TableBucketPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::TableBucketPolicy",
         supportsTags = Prelude.False,
         properties = ["ResourcePolicy" JSON..= resourcePolicy,
                       "TableBucketARN" JSON..= tableBucketARN]}
instance JSON.ToJSON TableBucketPolicy where
  toJSON TableBucketPolicy {..}
    = JSON.object
        ["ResourcePolicy" JSON..= resourcePolicy,
         "TableBucketARN" JSON..= tableBucketARN]
instance Property "ResourcePolicy" TableBucketPolicy where
  type PropertyType "ResourcePolicy" TableBucketPolicy = JSON.Object
  set newValue TableBucketPolicy {..}
    = TableBucketPolicy {resourcePolicy = newValue, ..}
instance Property "TableBucketARN" TableBucketPolicy where
  type PropertyType "TableBucketARN" TableBucketPolicy = Value Prelude.Text
  set newValue TableBucketPolicy {..}
    = TableBucketPolicy {tableBucketARN = newValue, ..}