module Stratosphere.EKS.Cluster.ResourcesVpcConfigProperty (
        ResourcesVpcConfigProperty(..), mkResourcesVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcesVpcConfigProperty
  = ResourcesVpcConfigProperty {endpointPrivateAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                                endpointPublicAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                                publicAccessCidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                                securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcesVpcConfigProperty ::
  ValueList Prelude.Text -> ResourcesVpcConfigProperty
mkResourcesVpcConfigProperty subnetIds
  = ResourcesVpcConfigProperty
      {subnetIds = subnetIds, endpointPrivateAccess = Prelude.Nothing,
       endpointPublicAccess = Prelude.Nothing,
       publicAccessCidrs = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties ResourcesVpcConfigProperty where
  toResourceProperties ResourcesVpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ResourcesVpcConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointPrivateAccess"
                                 Prelude.<$> endpointPrivateAccess,
                               (JSON..=) "EndpointPublicAccess" Prelude.<$> endpointPublicAccess,
                               (JSON..=) "PublicAccessCidrs" Prelude.<$> publicAccessCidrs,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))}
instance JSON.ToJSON ResourcesVpcConfigProperty where
  toJSON ResourcesVpcConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointPrivateAccess"
                    Prelude.<$> endpointPrivateAccess,
                  (JSON..=) "EndpointPublicAccess" Prelude.<$> endpointPublicAccess,
                  (JSON..=) "PublicAccessCidrs" Prelude.<$> publicAccessCidrs,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])))
instance Property "EndpointPrivateAccess" ResourcesVpcConfigProperty where
  type PropertyType "EndpointPrivateAccess" ResourcesVpcConfigProperty = Value Prelude.Bool
  set newValue ResourcesVpcConfigProperty {..}
    = ResourcesVpcConfigProperty
        {endpointPrivateAccess = Prelude.pure newValue, ..}
instance Property "EndpointPublicAccess" ResourcesVpcConfigProperty where
  type PropertyType "EndpointPublicAccess" ResourcesVpcConfigProperty = Value Prelude.Bool
  set newValue ResourcesVpcConfigProperty {..}
    = ResourcesVpcConfigProperty
        {endpointPublicAccess = Prelude.pure newValue, ..}
instance Property "PublicAccessCidrs" ResourcesVpcConfigProperty where
  type PropertyType "PublicAccessCidrs" ResourcesVpcConfigProperty = ValueList Prelude.Text
  set newValue ResourcesVpcConfigProperty {..}
    = ResourcesVpcConfigProperty
        {publicAccessCidrs = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ResourcesVpcConfigProperty where
  type PropertyType "SecurityGroupIds" ResourcesVpcConfigProperty = ValueList Prelude.Text
  set newValue ResourcesVpcConfigProperty {..}
    = ResourcesVpcConfigProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" ResourcesVpcConfigProperty where
  type PropertyType "SubnetIds" ResourcesVpcConfigProperty = ValueList Prelude.Text
  set newValue ResourcesVpcConfigProperty {..}
    = ResourcesVpcConfigProperty {subnetIds = newValue, ..}