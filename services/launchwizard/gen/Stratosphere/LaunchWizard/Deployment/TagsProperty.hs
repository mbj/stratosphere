module Stratosphere.LaunchWizard.Deployment.TagsProperty (
        TagsProperty(..), mkTagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-launchwizard-deployment-tags.html>
    TagsProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-launchwizard-deployment-tags.html#cfn-launchwizard-deployment-tags-key>
                  key :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-launchwizard-deployment-tags.html#cfn-launchwizard-deployment-tags-value>
                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsProperty :: Value Prelude.Text -> TagsProperty
mkTagsProperty key
  = TagsProperty
      {haddock_workaround_ = (), key = key, value = Prelude.Nothing}
instance ToResourceProperties TagsProperty where
  toResourceProperties TagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::LaunchWizard::Deployment.Tags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TagsProperty where
  toJSON TagsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" TagsProperty where
  type PropertyType "Key" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..} = TagsProperty {key = newValue, ..}
instance Property "Value" TagsProperty where
  type PropertyType "Value" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {value = Prelude.pure newValue, ..}