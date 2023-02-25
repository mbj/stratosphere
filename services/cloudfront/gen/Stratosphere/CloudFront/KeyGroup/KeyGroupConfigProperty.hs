module Stratosphere.CloudFront.KeyGroup.KeyGroupConfigProperty (
        KeyGroupConfigProperty(..), mkKeyGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyGroupConfigProperty
  = KeyGroupConfigProperty {comment :: (Prelude.Maybe (Value Prelude.Text)),
                            items :: (ValueList (Value Prelude.Text)),
                            name :: (Value Prelude.Text)}
mkKeyGroupConfigProperty ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text -> KeyGroupConfigProperty
mkKeyGroupConfigProperty items name
  = KeyGroupConfigProperty
      {items = items, name = name, comment = Prelude.Nothing}
instance ToResourceProperties KeyGroupConfigProperty where
  toResourceProperties KeyGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyGroup.KeyGroupConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Items" JSON..= items, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))}
instance JSON.ToJSON KeyGroupConfigProperty where
  toJSON KeyGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Items" JSON..= items, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])))
instance Property "Comment" KeyGroupConfigProperty where
  type PropertyType "Comment" KeyGroupConfigProperty = Value Prelude.Text
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {comment = Prelude.pure newValue, ..}
instance Property "Items" KeyGroupConfigProperty where
  type PropertyType "Items" KeyGroupConfigProperty = ValueList (Value Prelude.Text)
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {items = newValue, ..}
instance Property "Name" KeyGroupConfigProperty where
  type PropertyType "Name" KeyGroupConfigProperty = Value Prelude.Text
  set newValue KeyGroupConfigProperty {..}
    = KeyGroupConfigProperty {name = newValue, ..}