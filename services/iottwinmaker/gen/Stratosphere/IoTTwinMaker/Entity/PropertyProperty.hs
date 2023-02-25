module Stratosphere.IoTTwinMaker.Entity.PropertyProperty (
        module Exports, PropertyProperty(..), mkPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DataValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DefinitionProperty as Exports
import Stratosphere.ResourceProperties
data PropertyProperty
  = PropertyProperty {definition :: (Prelude.Maybe DefinitionProperty),
                      value :: (Prelude.Maybe DataValueProperty)}
mkPropertyProperty :: PropertyProperty
mkPropertyProperty
  = PropertyProperty
      {definition = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties PropertyProperty where
  toResourceProperties PropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Property",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON PropertyProperty where
  toJSON PropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Definition" PropertyProperty where
  type PropertyType "Definition" PropertyProperty = DefinitionProperty
  set newValue PropertyProperty {..}
    = PropertyProperty {definition = Prelude.pure newValue, ..}
instance Property "Value" PropertyProperty where
  type PropertyType "Value" PropertyProperty = DataValueProperty
  set newValue PropertyProperty {..}
    = PropertyProperty {value = Prelude.pure newValue, ..}