module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.PinpointDestinationProperty (
        PinpointDestinationProperty(..), mkPinpointDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PinpointDestinationProperty
  = PinpointDestinationProperty {applicationArn :: (Prelude.Maybe (Value Prelude.Text))}
mkPinpointDestinationProperty :: PinpointDestinationProperty
mkPinpointDestinationProperty
  = PinpointDestinationProperty {applicationArn = Prelude.Nothing}
instance ToResourceProperties PinpointDestinationProperty where
  toResourceProperties PinpointDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.PinpointDestination",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn])}
instance JSON.ToJSON PinpointDestinationProperty where
  toJSON PinpointDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn]))
instance Property "ApplicationArn" PinpointDestinationProperty where
  type PropertyType "ApplicationArn" PinpointDestinationProperty = Value Prelude.Text
  set newValue PinpointDestinationProperty {}
    = PinpointDestinationProperty
        {applicationArn = Prelude.pure newValue, ..}