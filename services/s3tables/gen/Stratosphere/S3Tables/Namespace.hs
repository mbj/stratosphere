module Stratosphere.S3Tables.Namespace (
        Namespace(..), mkNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Namespace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-namespace.html>
    Namespace {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-namespace.html#cfn-s3tables-namespace-namespace>
               namespace :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-namespace.html#cfn-s3tables-namespace-tablebucketarn>
               tableBucketARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespace ::
  Value Prelude.Text -> Value Prelude.Text -> Namespace
mkNamespace namespace tableBucketARN
  = Namespace
      {haddock_workaround_ = (), namespace = namespace,
       tableBucketARN = tableBucketARN}
instance ToResourceProperties Namespace where
  toResourceProperties Namespace {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Namespace",
         supportsTags = Prelude.False,
         properties = ["Namespace" JSON..= namespace,
                       "TableBucketARN" JSON..= tableBucketARN]}
instance JSON.ToJSON Namespace where
  toJSON Namespace {..}
    = JSON.object
        ["Namespace" JSON..= namespace,
         "TableBucketARN" JSON..= tableBucketARN]
instance Property "Namespace" Namespace where
  type PropertyType "Namespace" Namespace = Value Prelude.Text
  set newValue Namespace {..} = Namespace {namespace = newValue, ..}
instance Property "TableBucketARN" Namespace where
  type PropertyType "TableBucketARN" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {tableBucketARN = newValue, ..}