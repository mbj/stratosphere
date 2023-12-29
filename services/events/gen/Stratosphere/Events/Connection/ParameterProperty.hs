module Stratosphere.Events.Connection.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = ParameterProperty {isValueSecret :: (Prelude.Maybe (Value Prelude.Bool)),
                       key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterProperty
mkParameterProperty key value
  = ParameterProperty
      {key = key, value = value, isValueSecret = Prelude.Nothing}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.Parameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "IsValueSecret" Prelude.<$> isValueSecret]))}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "IsValueSecret" Prelude.<$> isValueSecret])))
instance Property "IsValueSecret" ParameterProperty where
  type PropertyType "IsValueSecret" ParameterProperty = Value Prelude.Bool
  set newValue ParameterProperty {..}
    = ParameterProperty {isValueSecret = Prelude.pure newValue, ..}
instance Property "Key" ParameterProperty where
  type PropertyType "Key" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {key = newValue, ..}
instance Property "Value" ParameterProperty where
  type PropertyType "Value" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {value = newValue, ..}