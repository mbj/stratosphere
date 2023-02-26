module Stratosphere.OpenSearchService.Domain.VPCOptionsProperty (
        VPCOptionsProperty(..), mkVPCOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCOptionsProperty
  = VPCOptionsProperty {securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                        subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkVPCOptionsProperty :: VPCOptionsProperty
mkVPCOptionsProperty
  = VPCOptionsProperty
      {securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties VPCOptionsProperty where
  toResourceProperties VPCOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.VPCOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON VPCOptionsProperty where
  toJSON VPCOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "SecurityGroupIds" VPCOptionsProperty where
  type PropertyType "SecurityGroupIds" VPCOptionsProperty = ValueList Prelude.Text
  set newValue VPCOptionsProperty {..}
    = VPCOptionsProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VPCOptionsProperty where
  type PropertyType "SubnetIds" VPCOptionsProperty = ValueList Prelude.Text
  set newValue VPCOptionsProperty {..}
    = VPCOptionsProperty {subnetIds = Prelude.pure newValue, ..}