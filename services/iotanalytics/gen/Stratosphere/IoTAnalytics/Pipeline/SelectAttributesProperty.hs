module Stratosphere.IoTAnalytics.Pipeline.SelectAttributesProperty (
        SelectAttributesProperty(..), mkSelectAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelectAttributesProperty
  = SelectAttributesProperty {attributes :: (ValueList (Value Prelude.Text)),
                              name :: (Value Prelude.Text),
                              next :: (Prelude.Maybe (Value Prelude.Text))}
mkSelectAttributesProperty ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text -> SelectAttributesProperty
mkSelectAttributesProperty attributes name
  = SelectAttributesProperty
      {attributes = attributes, name = name, next = Prelude.Nothing}
instance ToResourceProperties SelectAttributesProperty where
  toResourceProperties SelectAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.SelectAttributes",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON SelectAttributesProperty where
  toJSON SelectAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attributes" SelectAttributesProperty where
  type PropertyType "Attributes" SelectAttributesProperty = ValueList (Value Prelude.Text)
  set newValue SelectAttributesProperty {..}
    = SelectAttributesProperty {attributes = newValue, ..}
instance Property "Name" SelectAttributesProperty where
  type PropertyType "Name" SelectAttributesProperty = Value Prelude.Text
  set newValue SelectAttributesProperty {..}
    = SelectAttributesProperty {name = newValue, ..}
instance Property "Next" SelectAttributesProperty where
  type PropertyType "Next" SelectAttributesProperty = Value Prelude.Text
  set newValue SelectAttributesProperty {..}
    = SelectAttributesProperty {next = Prelude.pure newValue, ..}