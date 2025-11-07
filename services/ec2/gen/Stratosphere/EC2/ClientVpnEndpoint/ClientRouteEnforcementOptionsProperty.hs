module Stratosphere.EC2.ClientVpnEndpoint.ClientRouteEnforcementOptionsProperty (
        ClientRouteEnforcementOptionsProperty(..),
        mkClientRouteEnforcementOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientRouteEnforcementOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientrouteenforcementoptions.html>
    ClientRouteEnforcementOptionsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientrouteenforcementoptions.html#cfn-ec2-clientvpnendpoint-clientrouteenforcementoptions-enforced>
                                           enforced :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientRouteEnforcementOptionsProperty ::
  ClientRouteEnforcementOptionsProperty
mkClientRouteEnforcementOptionsProperty
  = ClientRouteEnforcementOptionsProperty
      {haddock_workaround_ = (), enforced = Prelude.Nothing}
instance ToResourceProperties ClientRouteEnforcementOptionsProperty where
  toResourceProperties ClientRouteEnforcementOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ClientRouteEnforcementOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enforced" Prelude.<$> enforced])}
instance JSON.ToJSON ClientRouteEnforcementOptionsProperty where
  toJSON ClientRouteEnforcementOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enforced" Prelude.<$> enforced]))
instance Property "Enforced" ClientRouteEnforcementOptionsProperty where
  type PropertyType "Enforced" ClientRouteEnforcementOptionsProperty = Value Prelude.Bool
  set newValue ClientRouteEnforcementOptionsProperty {..}
    = ClientRouteEnforcementOptionsProperty
        {enforced = Prelude.pure newValue, ..}