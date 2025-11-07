module Stratosphere.CloudFront.AnycastIpList.TagsProperty (
        TagsProperty(..), mkTagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data TagsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-tags.html>
    TagsProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-tags.html#cfn-cloudfront-anycastiplist-tags-items>
                  items :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsProperty :: TagsProperty
mkTagsProperty
  = TagsProperty {haddock_workaround_ = (), items = Prelude.Nothing}
instance ToResourceProperties TagsProperty where
  toResourceProperties TagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::AnycastIpList.Tags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Items" Prelude.<$> items])}
instance JSON.ToJSON TagsProperty where
  toJSON TagsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Items" Prelude.<$> items]))
instance Property "Items" TagsProperty where
  type PropertyType "Items" TagsProperty = [Tag]
  set newValue TagsProperty {..}
    = TagsProperty {items = Prelude.pure newValue, ..}