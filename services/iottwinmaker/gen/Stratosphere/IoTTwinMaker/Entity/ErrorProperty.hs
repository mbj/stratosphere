module Stratosphere.IoTTwinMaker.Entity.ErrorProperty (
        ErrorProperty(..), mkErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorProperty
  = ErrorProperty {code :: (Prelude.Maybe (Value Prelude.Text)),
                   message :: (Prelude.Maybe (Value Prelude.Text))}
mkErrorProperty :: ErrorProperty
mkErrorProperty
  = ErrorProperty {code = Prelude.Nothing, message = Prelude.Nothing}
instance ToResourceProperties ErrorProperty where
  toResourceProperties ErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Error",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Message" Prelude.<$> message])}
instance JSON.ToJSON ErrorProperty where
  toJSON ErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Message" Prelude.<$> message]))
instance Property "Code" ErrorProperty where
  type PropertyType "Code" ErrorProperty = Value Prelude.Text
  set newValue ErrorProperty {..}
    = ErrorProperty {code = Prelude.pure newValue, ..}
instance Property "Message" ErrorProperty where
  type PropertyType "Message" ErrorProperty = Value Prelude.Text
  set newValue ErrorProperty {..}
    = ErrorProperty {message = Prelude.pure newValue, ..}