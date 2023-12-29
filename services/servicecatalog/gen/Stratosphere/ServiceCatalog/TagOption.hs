module Stratosphere.ServiceCatalog.TagOption (
        TagOption(..), mkTagOption
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagOption
  = TagOption {active :: (Prelude.Maybe (Value Prelude.Bool)),
               key :: (Value Prelude.Text),
               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagOption ::
  Value Prelude.Text -> Value Prelude.Text -> TagOption
mkTagOption key value
  = TagOption {key = key, value = value, active = Prelude.Nothing}
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