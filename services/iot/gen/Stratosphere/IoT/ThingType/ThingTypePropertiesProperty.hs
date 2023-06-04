module Stratosphere.IoT.ThingType.ThingTypePropertiesProperty (
        ThingTypePropertiesProperty(..), mkThingTypePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThingTypePropertiesProperty
  = ThingTypePropertiesProperty {searchableAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 thingTypeDescription :: (Prelude.Maybe (Value Prelude.Text))}
mkThingTypePropertiesProperty :: ThingTypePropertiesProperty
mkThingTypePropertiesProperty
  = ThingTypePropertiesProperty
      {searchableAttributes = Prelude.Nothing,
       thingTypeDescription = Prelude.Nothing}
instance ToResourceProperties ThingTypePropertiesProperty where
  toResourceProperties ThingTypePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingType.ThingTypeProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SearchableAttributes" Prelude.<$> searchableAttributes,
                            (JSON..=) "ThingTypeDescription"
                              Prelude.<$> thingTypeDescription])}
instance JSON.ToJSON ThingTypePropertiesProperty where
  toJSON ThingTypePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SearchableAttributes" Prelude.<$> searchableAttributes,
               (JSON..=) "ThingTypeDescription"
                 Prelude.<$> thingTypeDescription]))
instance Property "SearchableAttributes" ThingTypePropertiesProperty where
  type PropertyType "SearchableAttributes" ThingTypePropertiesProperty = ValueList Prelude.Text
  set newValue ThingTypePropertiesProperty {..}
    = ThingTypePropertiesProperty
        {searchableAttributes = Prelude.pure newValue, ..}
instance Property "ThingTypeDescription" ThingTypePropertiesProperty where
  type PropertyType "ThingTypeDescription" ThingTypePropertiesProperty = Value Prelude.Text
  set newValue ThingTypePropertiesProperty {..}
    = ThingTypePropertiesProperty
        {thingTypeDescription = Prelude.pure newValue, ..}