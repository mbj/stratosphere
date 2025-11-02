module Stratosphere.S3Outposts.Bucket.FilterTagProperty (
        FilterTagProperty(..), mkFilterTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterTagProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filtertag.html>
    FilterTagProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filtertag.html#cfn-s3outposts-bucket-filtertag-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filtertag.html#cfn-s3outposts-bucket-filtertag-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterTagProperty
mkFilterTagProperty key value
  = FilterTagProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties FilterTagProperty where
  toResourceProperties FilterTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.FilterTag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON FilterTagProperty where
  toJSON FilterTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" FilterTagProperty where
  type PropertyType "Key" FilterTagProperty = Value Prelude.Text
  set newValue FilterTagProperty {..}
    = FilterTagProperty {key = newValue, ..}
instance Property "Value" FilterTagProperty where
  type PropertyType "Value" FilterTagProperty = Value Prelude.Text
  set newValue FilterTagProperty {..}
    = FilterTagProperty {value = newValue, ..}