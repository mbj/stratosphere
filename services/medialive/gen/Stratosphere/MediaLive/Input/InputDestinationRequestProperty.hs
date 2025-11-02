module Stratosphere.MediaLive.Input.InputDestinationRequestProperty (
        module Exports, InputDestinationRequestProperty(..),
        mkInputDestinationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputRequestDestinationRouteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputDestinationRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html>
    InputDestinationRequestProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-network>
                                     network :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-networkroutes>
                                     networkRoutes :: (Prelude.Maybe [InputRequestDestinationRouteProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-staticipaddress>
                                     staticIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-streamname>
                                     streamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputDestinationRequestProperty ::
  InputDestinationRequestProperty
mkInputDestinationRequestProperty
  = InputDestinationRequestProperty
      {haddock_workaround_ = (), network = Prelude.Nothing,
       networkRoutes = Prelude.Nothing, staticIpAddress = Prelude.Nothing,
       streamName = Prelude.Nothing}
instance ToResourceProperties InputDestinationRequestProperty where
  toResourceProperties InputDestinationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputDestinationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Network" Prelude.<$> network,
                            (JSON..=) "NetworkRoutes" Prelude.<$> networkRoutes,
                            (JSON..=) "StaticIpAddress" Prelude.<$> staticIpAddress,
                            (JSON..=) "StreamName" Prelude.<$> streamName])}
instance JSON.ToJSON InputDestinationRequestProperty where
  toJSON InputDestinationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Network" Prelude.<$> network,
               (JSON..=) "NetworkRoutes" Prelude.<$> networkRoutes,
               (JSON..=) "StaticIpAddress" Prelude.<$> staticIpAddress,
               (JSON..=) "StreamName" Prelude.<$> streamName]))
instance Property "Network" InputDestinationRequestProperty where
  type PropertyType "Network" InputDestinationRequestProperty = Value Prelude.Text
  set newValue InputDestinationRequestProperty {..}
    = InputDestinationRequestProperty
        {network = Prelude.pure newValue, ..}
instance Property "NetworkRoutes" InputDestinationRequestProperty where
  type PropertyType "NetworkRoutes" InputDestinationRequestProperty = [InputRequestDestinationRouteProperty]
  set newValue InputDestinationRequestProperty {..}
    = InputDestinationRequestProperty
        {networkRoutes = Prelude.pure newValue, ..}
instance Property "StaticIpAddress" InputDestinationRequestProperty where
  type PropertyType "StaticIpAddress" InputDestinationRequestProperty = Value Prelude.Text
  set newValue InputDestinationRequestProperty {..}
    = InputDestinationRequestProperty
        {staticIpAddress = Prelude.pure newValue, ..}
instance Property "StreamName" InputDestinationRequestProperty where
  type PropertyType "StreamName" InputDestinationRequestProperty = Value Prelude.Text
  set newValue InputDestinationRequestProperty {..}
    = InputDestinationRequestProperty
        {streamName = Prelude.pure newValue, ..}