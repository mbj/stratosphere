module Stratosphere.PinpointEmail.Identity.TagsProperty (
        TagsProperty(..), mkTagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html>
    TagsProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-key>
                  key :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-value>
                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsProperty :: TagsProperty
mkTagsProperty
  = TagsProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TagsProperty where
  toResourceProperties TagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::Identity.Tags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TagsProperty where
  toJSON TagsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" TagsProperty where
  type PropertyType "Key" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {key = Prelude.pure newValue, ..}
instance Property "Value" TagsProperty where
  type PropertyType "Value" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {value = Prelude.pure newValue, ..}