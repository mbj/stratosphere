module Stratosphere.Logs.Integration (
        module Exports, Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Integration.ResourceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Integration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-integration.html>
    Integration {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-integration.html#cfn-logs-integration-integrationname>
                 integrationName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-integration.html#cfn-logs-integration-integrationtype>
                 integrationType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-integration.html#cfn-logs-integration-resourceconfig>
                 resourceConfig :: ResourceConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegration ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceConfigProperty -> Integration
mkIntegration integrationName integrationType resourceConfig
  = Integration
      {haddock_workaround_ = (), integrationName = integrationName,
       integrationType = integrationType, resourceConfig = resourceConfig}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Integration", supportsTags = Prelude.False,
         properties = ["IntegrationName" JSON..= integrationName,
                       "IntegrationType" JSON..= integrationType,
                       "ResourceConfig" JSON..= resourceConfig]}
instance JSON.ToJSON Integration where
  toJSON Integration {..}
    = JSON.object
        ["IntegrationName" JSON..= integrationName,
         "IntegrationType" JSON..= integrationType,
         "ResourceConfig" JSON..= resourceConfig]
instance Property "IntegrationName" Integration where
  type PropertyType "IntegrationName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationName = newValue, ..}
instance Property "IntegrationType" Integration where
  type PropertyType "IntegrationType" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationType = newValue, ..}
instance Property "ResourceConfig" Integration where
  type PropertyType "ResourceConfig" Integration = ResourceConfigProperty
  set newValue Integration {..}
    = Integration {resourceConfig = newValue, ..}