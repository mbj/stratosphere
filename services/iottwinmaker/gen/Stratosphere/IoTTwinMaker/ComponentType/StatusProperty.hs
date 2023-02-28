module Stratosphere.IoTTwinMaker.ComponentType.StatusProperty (
        module Exports, StatusProperty(..), mkStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.ErrorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatusProperty
  = StatusProperty {error :: (Prelude.Maybe ErrorProperty),
                    state :: (Prelude.Maybe (Value Prelude.Text))}
mkStatusProperty :: StatusProperty
mkStatusProperty
  = StatusProperty {error = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties StatusProperty where
  toResourceProperties StatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.Status",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Error" Prelude.<$> error,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON StatusProperty where
  toJSON StatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Error" Prelude.<$> error,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "Error" StatusProperty where
  type PropertyType "Error" StatusProperty = ErrorProperty
  set newValue StatusProperty {..}
    = StatusProperty {error = Prelude.pure newValue, ..}
instance Property "State" StatusProperty where
  type PropertyType "State" StatusProperty = Value Prelude.Text
  set newValue StatusProperty {..}
    = StatusProperty {state = Prelude.pure newValue, ..}