module Stratosphere.ARCRegionSwitch.Plan.ServiceProperty (
        ServiceProperty(..), mkServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-service.html>
    ServiceProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-service.html#cfn-arcregionswitch-plan-service-clusterarn>
                     clusterArn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-service.html#cfn-arcregionswitch-plan-service-crossaccountrole>
                     crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-service.html#cfn-arcregionswitch-plan-service-externalid>
                     externalId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-service.html#cfn-arcregionswitch-plan-service-servicearn>
                     serviceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceProperty :: ServiceProperty
mkServiceProperty
  = ServiceProperty
      {haddock_workaround_ = (), clusterArn = Prelude.Nothing,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing,
       serviceArn = Prelude.Nothing}
instance ToResourceProperties ServiceProperty where
  toResourceProperties ServiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Service",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
                            (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                            (JSON..=) "ExternalId" Prelude.<$> externalId,
                            (JSON..=) "ServiceArn" Prelude.<$> serviceArn])}
instance JSON.ToJSON ServiceProperty where
  toJSON ServiceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
               (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
               (JSON..=) "ExternalId" Prelude.<$> externalId,
               (JSON..=) "ServiceArn" Prelude.<$> serviceArn]))
instance Property "ClusterArn" ServiceProperty where
  type PropertyType "ClusterArn" ServiceProperty = Value Prelude.Text
  set newValue ServiceProperty {..}
    = ServiceProperty {clusterArn = Prelude.pure newValue, ..}
instance Property "CrossAccountRole" ServiceProperty where
  type PropertyType "CrossAccountRole" ServiceProperty = Value Prelude.Text
  set newValue ServiceProperty {..}
    = ServiceProperty {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" ServiceProperty where
  type PropertyType "ExternalId" ServiceProperty = Value Prelude.Text
  set newValue ServiceProperty {..}
    = ServiceProperty {externalId = Prelude.pure newValue, ..}
instance Property "ServiceArn" ServiceProperty where
  type PropertyType "ServiceArn" ServiceProperty = Value Prelude.Text
  set newValue ServiceProperty {..}
    = ServiceProperty {serviceArn = Prelude.pure newValue, ..}