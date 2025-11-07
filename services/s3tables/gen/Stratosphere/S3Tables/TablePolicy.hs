module Stratosphere.S3Tables.TablePolicy (
        TablePolicy(..), mkTablePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TablePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablepolicy.html>
    TablePolicy {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablepolicy.html#cfn-s3tables-tablepolicy-resourcepolicy>
                 resourcePolicy :: JSON.Object,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablepolicy.html#cfn-s3tables-tablepolicy-tablearn>
                 tableARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTablePolicy :: JSON.Object -> Value Prelude.Text -> TablePolicy
mkTablePolicy resourcePolicy tableARN
  = TablePolicy
      {haddock_workaround_ = (), resourcePolicy = resourcePolicy,
       tableARN = tableARN}
instance ToResourceProperties TablePolicy where
  toResourceProperties TablePolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::TablePolicy",
         supportsTags = Prelude.False,
         properties = ["ResourcePolicy" JSON..= resourcePolicy,
                       "TableARN" JSON..= tableARN]}
instance JSON.ToJSON TablePolicy where
  toJSON TablePolicy {..}
    = JSON.object
        ["ResourcePolicy" JSON..= resourcePolicy,
         "TableARN" JSON..= tableARN]
instance Property "ResourcePolicy" TablePolicy where
  type PropertyType "ResourcePolicy" TablePolicy = JSON.Object
  set newValue TablePolicy {..}
    = TablePolicy {resourcePolicy = newValue, ..}
instance Property "TableARN" TablePolicy where
  type PropertyType "TableARN" TablePolicy = Value Prelude.Text
  set newValue TablePolicy {..}
    = TablePolicy {tableARN = newValue, ..}