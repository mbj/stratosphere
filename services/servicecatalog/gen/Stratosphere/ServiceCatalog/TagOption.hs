module Stratosphere.ServiceCatalog.TagOption (
        TagOption(..), mkTagOption
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagOption
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html>
    TagOption {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-active>
               active :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-key>
               key :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-value>
               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagOption ::
  Value Prelude.Text -> Value Prelude.Text -> TagOption
mkTagOption key value
  = TagOption
      {haddock_workaround_ = (), key = key, value = value,
       active = Prelude.Nothing}
instance ToResourceProperties TagOption where
  toResourceProperties TagOption {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::TagOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Active" Prelude.<$> active]))}
instance JSON.ToJSON TagOption where
  toJSON TagOption {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Active" Prelude.<$> active])))
instance Property "Active" TagOption where
  type PropertyType "Active" TagOption = Value Prelude.Bool
  set newValue TagOption {..}
    = TagOption {active = Prelude.pure newValue, ..}
instance Property "Key" TagOption where
  type PropertyType "Key" TagOption = Value Prelude.Text
  set newValue TagOption {..} = TagOption {key = newValue, ..}
instance Property "Value" TagOption where
  type PropertyType "Value" TagOption = Value Prelude.Text
  set newValue TagOption {..} = TagOption {value = newValue, ..}