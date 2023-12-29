module Stratosphere.IoTTwinMaker.ComponentType.PropertyGroupProperty (
        PropertyGroupProperty(..), mkPropertyGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyGroupProperty
  = PropertyGroupProperty {groupType :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyGroupProperty :: PropertyGroupProperty
mkPropertyGroupProperty
  = PropertyGroupProperty
      {groupType = Prelude.Nothing, propertyNames = Prelude.Nothing}
instance ToResourceProperties PropertyGroupProperty where
  toResourceProperties PropertyGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.PropertyGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupType" Prelude.<$> groupType,
                            (JSON..=) "PropertyNames" Prelude.<$> propertyNames])}
instance JSON.ToJSON PropertyGroupProperty where
  toJSON PropertyGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupType" Prelude.<$> groupType,
               (JSON..=) "PropertyNames" Prelude.<$> propertyNames]))
instance Property "GroupType" PropertyGroupProperty where
  type PropertyType "GroupType" PropertyGroupProperty = Value Prelude.Text
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty {groupType = Prelude.pure newValue, ..}
instance Property "PropertyNames" PropertyGroupProperty where
  type PropertyType "PropertyNames" PropertyGroupProperty = ValueList Prelude.Text
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty {propertyNames = Prelude.pure newValue, ..}