module Stratosphere.MediaLive.Input.InputRequestDestinationRouteProperty (
        InputRequestDestinationRouteProperty(..),
        mkInputRequestDestinationRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputRequestDestinationRouteProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputrequestdestinationroute.html>
    InputRequestDestinationRouteProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputrequestdestinationroute.html#cfn-medialive-input-inputrequestdestinationroute-cidr>
                                          cidr :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputrequestdestinationroute.html#cfn-medialive-input-inputrequestdestinationroute-gateway>
                                          gateway :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputRequestDestinationRouteProperty ::
  InputRequestDestinationRouteProperty
mkInputRequestDestinationRouteProperty
  = InputRequestDestinationRouteProperty
      {cidr = Prelude.Nothing, gateway = Prelude.Nothing}
instance ToResourceProperties InputRequestDestinationRouteProperty where
  toResourceProperties InputRequestDestinationRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputRequestDestinationRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "Gateway" Prelude.<$> gateway])}
instance JSON.ToJSON InputRequestDestinationRouteProperty where
  toJSON InputRequestDestinationRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "Gateway" Prelude.<$> gateway]))
instance Property "Cidr" InputRequestDestinationRouteProperty where
  type PropertyType "Cidr" InputRequestDestinationRouteProperty = Value Prelude.Text
  set newValue InputRequestDestinationRouteProperty {..}
    = InputRequestDestinationRouteProperty
        {cidr = Prelude.pure newValue, ..}
instance Property "Gateway" InputRequestDestinationRouteProperty where
  type PropertyType "Gateway" InputRequestDestinationRouteProperty = Value Prelude.Text
  set newValue InputRequestDestinationRouteProperty {..}
    = InputRequestDestinationRouteProperty
        {gateway = Prelude.pure newValue, ..}