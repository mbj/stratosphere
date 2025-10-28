module Stratosphere.AppRunner.Service.EgressConfigurationProperty (
        EgressConfigurationProperty(..), mkEgressConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-egressconfiguration.html>
    EgressConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-egressconfiguration.html#cfn-apprunner-service-egressconfiguration-egresstype>
                                 egressType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-egressconfiguration.html#cfn-apprunner-service-egressconfiguration-vpcconnectorarn>
                                 vpcConnectorArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressConfigurationProperty ::
  Value Prelude.Text -> EgressConfigurationProperty
mkEgressConfigurationProperty egressType
  = EgressConfigurationProperty
      {haddock_workaround_ = (), egressType = egressType,
       vpcConnectorArn = Prelude.Nothing}
instance ToResourceProperties EgressConfigurationProperty where
  toResourceProperties EgressConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.EgressConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EgressType" JSON..= egressType]
                           (Prelude.catMaybes
                              [(JSON..=) "VpcConnectorArn" Prelude.<$> vpcConnectorArn]))}
instance JSON.ToJSON EgressConfigurationProperty where
  toJSON EgressConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EgressType" JSON..= egressType]
              (Prelude.catMaybes
                 [(JSON..=) "VpcConnectorArn" Prelude.<$> vpcConnectorArn])))
instance Property "EgressType" EgressConfigurationProperty where
  type PropertyType "EgressType" EgressConfigurationProperty = Value Prelude.Text
  set newValue EgressConfigurationProperty {..}
    = EgressConfigurationProperty {egressType = newValue, ..}
instance Property "VpcConnectorArn" EgressConfigurationProperty where
  type PropertyType "VpcConnectorArn" EgressConfigurationProperty = Value Prelude.Text
  set newValue EgressConfigurationProperty {..}
    = EgressConfigurationProperty
        {vpcConnectorArn = Prelude.pure newValue, ..}