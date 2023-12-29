module Stratosphere.AppRunner.Service.EgressConfigurationProperty (
        EgressConfigurationProperty(..), mkEgressConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressConfigurationProperty
  = EgressConfigurationProperty {egressType :: (Value Prelude.Text),
                                 vpcConnectorArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressConfigurationProperty ::
  Value Prelude.Text -> EgressConfigurationProperty
mkEgressConfigurationProperty egressType
  = EgressConfigurationProperty
      {egressType = egressType, vpcConnectorArn = Prelude.Nothing}
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