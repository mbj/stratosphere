module Stratosphere.EMRServerless.Application.NetworkConfigurationProperty (
        NetworkConfigurationProperty(..), mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-networkconfiguration.html>
    NetworkConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-networkconfiguration.html#cfn-emrserverless-application-networkconfiguration-securitygroupids>
                                  securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-networkconfiguration.html#cfn-emrserverless-application-networkconfiguration-subnetids>
                                  subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {haddock_workaround_ = (), securityGroupIds = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "SecurityGroupIds" NetworkConfigurationProperty where
  type PropertyType "SecurityGroupIds" NetworkConfigurationProperty = ValueList Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" NetworkConfigurationProperty where
  type PropertyType "SubnetIds" NetworkConfigurationProperty = ValueList Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {subnetIds = Prelude.pure newValue, ..}