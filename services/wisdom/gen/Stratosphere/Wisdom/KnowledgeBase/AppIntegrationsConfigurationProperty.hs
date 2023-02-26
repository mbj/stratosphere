module Stratosphere.Wisdom.KnowledgeBase.AppIntegrationsConfigurationProperty (
        AppIntegrationsConfigurationProperty(..),
        mkAppIntegrationsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppIntegrationsConfigurationProperty
  = AppIntegrationsConfigurationProperty {appIntegrationArn :: (Value Prelude.Text),
                                          objectFields :: (ValueList Prelude.Text)}
mkAppIntegrationsConfigurationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AppIntegrationsConfigurationProperty
mkAppIntegrationsConfigurationProperty
  appIntegrationArn
  objectFields
  = AppIntegrationsConfigurationProperty
      {appIntegrationArn = appIntegrationArn,
       objectFields = objectFields}
instance ToResourceProperties AppIntegrationsConfigurationProperty where
  toResourceProperties AppIntegrationsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.AppIntegrationsConfiguration",
         properties = ["AppIntegrationArn" JSON..= appIntegrationArn,
                       "ObjectFields" JSON..= objectFields]}
instance JSON.ToJSON AppIntegrationsConfigurationProperty where
  toJSON AppIntegrationsConfigurationProperty {..}
    = JSON.object
        ["AppIntegrationArn" JSON..= appIntegrationArn,
         "ObjectFields" JSON..= objectFields]
instance Property "AppIntegrationArn" AppIntegrationsConfigurationProperty where
  type PropertyType "AppIntegrationArn" AppIntegrationsConfigurationProperty = Value Prelude.Text
  set newValue AppIntegrationsConfigurationProperty {..}
    = AppIntegrationsConfigurationProperty
        {appIntegrationArn = newValue, ..}
instance Property "ObjectFields" AppIntegrationsConfigurationProperty where
  type PropertyType "ObjectFields" AppIntegrationsConfigurationProperty = ValueList Prelude.Text
  set newValue AppIntegrationsConfigurationProperty {..}
    = AppIntegrationsConfigurationProperty
        {objectFields = newValue, ..}