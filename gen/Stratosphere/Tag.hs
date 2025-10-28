module Stratosphere.Tag (
        Tag(..), mkTag
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Tag
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html>
    Tag {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-key>
         key :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-value>
         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTag :: Value Prelude.Text -> Value Prelude.Text -> Tag
mkTag key value
  = Tag {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties Tag where
  toResourceProperties Tag {..}
    = ResourceProperties
        {awsType = "Tag", supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON Tag where
  toJSON Tag {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" Tag where
  type PropertyType "Key" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {key = newValue, ..}
instance Property "Value" Tag where
  type PropertyType "Value" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {value = newValue, ..}