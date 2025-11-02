module Stratosphere.OpenSearchService.Domain.VPCOptionsProperty (
        VPCOptionsProperty(..), mkVPCOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html>
    VPCOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html#cfn-opensearchservice-domain-vpcoptions-securitygroupids>
                        securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html#cfn-opensearchservice-domain-vpcoptions-subnetids>
                        subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCOptionsProperty :: VPCOptionsProperty
mkVPCOptionsProperty
  = VPCOptionsProperty
      {haddock_workaround_ = (), securityGroupIds = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties VPCOptionsProperty where
  toResourceProperties VPCOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.VPCOptions",
         supportsTags = Prelude.False,
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