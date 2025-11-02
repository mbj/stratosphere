module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.PinpointDestinationProperty (
        PinpointDestinationProperty(..), mkPinpointDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PinpointDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html>
    PinpointDestinationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html#cfn-pinpointemail-configurationseteventdestination-pinpointdestination-applicationarn>
                                 applicationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPinpointDestinationProperty :: PinpointDestinationProperty
mkPinpointDestinationProperty
  = PinpointDestinationProperty
      {haddock_workaround_ = (), applicationArn = Prelude.Nothing}
instance ToResourceProperties PinpointDestinationProperty where
  toResourceProperties PinpointDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.PinpointDestination",
         supportsTags = Prelude.False,
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
  set newValue PinpointDestinationProperty {..}
    = PinpointDestinationProperty
        {applicationArn = Prelude.pure newValue, ..}