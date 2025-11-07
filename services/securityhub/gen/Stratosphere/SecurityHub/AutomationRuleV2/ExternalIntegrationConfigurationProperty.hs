module Stratosphere.SecurityHub.AutomationRuleV2.ExternalIntegrationConfigurationProperty (
        ExternalIntegrationConfigurationProperty(..),
        mkExternalIntegrationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExternalIntegrationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-externalintegrationconfiguration.html>
    ExternalIntegrationConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-externalintegrationconfiguration.html#cfn-securityhub-automationrulev2-externalintegrationconfiguration-connectorarn>
                                              connectorArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalIntegrationConfigurationProperty ::
  ExternalIntegrationConfigurationProperty
mkExternalIntegrationConfigurationProperty
  = ExternalIntegrationConfigurationProperty
      {haddock_workaround_ = (), connectorArn = Prelude.Nothing}
instance ToResourceProperties ExternalIntegrationConfigurationProperty where
  toResourceProperties ExternalIntegrationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.ExternalIntegrationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectorArn" Prelude.<$> connectorArn])}
instance JSON.ToJSON ExternalIntegrationConfigurationProperty where
  toJSON ExternalIntegrationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectorArn" Prelude.<$> connectorArn]))
instance Property "ConnectorArn" ExternalIntegrationConfigurationProperty where
  type PropertyType "ConnectorArn" ExternalIntegrationConfigurationProperty = Value Prelude.Text
  set newValue ExternalIntegrationConfigurationProperty {..}
    = ExternalIntegrationConfigurationProperty
        {connectorArn = Prelude.pure newValue, ..}