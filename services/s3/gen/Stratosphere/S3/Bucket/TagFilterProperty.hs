module Stratosphere.S3.Bucket.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html>
    TagFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagFilterProperty
mkTagFilterProperty key value
  = TagFilterProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.TagFilter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = newValue, ..}
instance Property "Value" TagFilterProperty where
  type PropertyType "Value" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {value = newValue, ..}