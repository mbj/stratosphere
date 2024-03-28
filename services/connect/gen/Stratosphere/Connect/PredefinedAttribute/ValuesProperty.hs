module Stratosphere.Connect.PredefinedAttribute.ValuesProperty (
        ValuesProperty(..), mkValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValuesProperty
  = ValuesProperty {stringList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValuesProperty :: ValuesProperty
mkValuesProperty = ValuesProperty {stringList = Prelude.Nothing}
instance ToResourceProperties ValuesProperty where
  toResourceProperties ValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PredefinedAttribute.Values",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringList" Prelude.<$> stringList])}
instance JSON.ToJSON ValuesProperty where
  toJSON ValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringList" Prelude.<$> stringList]))
instance Property "StringList" ValuesProperty where
  type PropertyType "StringList" ValuesProperty = ValueList Prelude.Text
  set newValue ValuesProperty {}
    = ValuesProperty {stringList = Prelude.pure newValue, ..}