module Stratosphere.S3.Bucket.TieringProperty (
        TieringProperty(..), mkTieringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TieringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tiering.html>
    TieringProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tiering.html#cfn-s3-bucket-tiering-accesstier>
                     accessTier :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tiering.html#cfn-s3-bucket-tiering-days>
                     days :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTieringProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> TieringProperty
mkTieringProperty accessTier days
  = TieringProperty
      {haddock_workaround_ = (), accessTier = accessTier, days = days}
instance ToResourceProperties TieringProperty where
  toResourceProperties TieringProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Tiering", supportsTags = Prelude.False,
         properties = ["AccessTier" JSON..= accessTier,
                       "Days" JSON..= days]}
instance JSON.ToJSON TieringProperty where
  toJSON TieringProperty {..}
    = JSON.object
        ["AccessTier" JSON..= accessTier, "Days" JSON..= days]
instance Property "AccessTier" TieringProperty where
  type PropertyType "AccessTier" TieringProperty = Value Prelude.Text
  set newValue TieringProperty {..}
    = TieringProperty {accessTier = newValue, ..}
instance Property "Days" TieringProperty where
  type PropertyType "Days" TieringProperty = Value Prelude.Integer
  set newValue TieringProperty {..}
    = TieringProperty {days = newValue, ..}