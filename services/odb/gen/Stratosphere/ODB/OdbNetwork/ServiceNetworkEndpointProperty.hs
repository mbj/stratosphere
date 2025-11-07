module Stratosphere.ODB.OdbNetwork.ServiceNetworkEndpointProperty (
        ServiceNetworkEndpointProperty(..),
        mkServiceNetworkEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNetworkEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-servicenetworkendpoint.html>
    ServiceNetworkEndpointProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-servicenetworkendpoint.html#cfn-odb-odbnetwork-servicenetworkendpoint-vpcendpointid>
                                    vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-servicenetworkendpoint.html#cfn-odb-odbnetwork-servicenetworkendpoint-vpcendpointtype>
                                    vpcEndpointType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetworkEndpointProperty :: ServiceNetworkEndpointProperty
mkServiceNetworkEndpointProperty
  = ServiceNetworkEndpointProperty
      {haddock_workaround_ = (), vpcEndpointId = Prelude.Nothing,
       vpcEndpointType = Prelude.Nothing}
instance ToResourceProperties ServiceNetworkEndpointProperty where
  toResourceProperties ServiceNetworkEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork.ServiceNetworkEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                            (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType])}
instance JSON.ToJSON ServiceNetworkEndpointProperty where
  toJSON ServiceNetworkEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
               (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType]))
instance Property "VpcEndpointId" ServiceNetworkEndpointProperty where
  type PropertyType "VpcEndpointId" ServiceNetworkEndpointProperty = Value Prelude.Text
  set newValue ServiceNetworkEndpointProperty {..}
    = ServiceNetworkEndpointProperty
        {vpcEndpointId = Prelude.pure newValue, ..}
instance Property "VpcEndpointType" ServiceNetworkEndpointProperty where
  type PropertyType "VpcEndpointType" ServiceNetworkEndpointProperty = Value Prelude.Text
  set newValue ServiceNetworkEndpointProperty {..}
    = ServiceNetworkEndpointProperty
        {vpcEndpointType = Prelude.pure newValue, ..}