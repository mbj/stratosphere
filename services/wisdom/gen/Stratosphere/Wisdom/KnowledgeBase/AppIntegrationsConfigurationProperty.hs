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
                                          objectFields :: (Prelude.Maybe (ValueList Prelude.Text))}
mkAppIntegrationsConfigurationProperty ::
  Value Prelude.Text -> AppIntegrationsConfigurationProperty
mkAppIntegrationsConfigurationProperty appIntegrationArn
  = AppIntegrationsConfigurationProperty
      {appIntegrationArn = appIntegrationArn,
       objectFields = Prelude.Nothing}
instance ToResourceProperties AppIntegrationsConfigurationProperty where
  toResourceProperties AppIntegrationsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.AppIntegrationsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppIntegrationArn" JSON..= appIntegrationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectFields" Prelude.<$> objectFields]))}
instance JSON.ToJSON AppIntegrationsConfigurationProperty where
  toJSON AppIntegrationsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppIntegrationArn" JSON..= appIntegrationArn]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectFields" Prelude.<$> objectFields])))
instance Property "AppIntegrationArn" AppIntegrationsConfigurationProperty where
  type PropertyType "AppIntegrationArn" AppIntegrationsConfigurationProperty = Value Prelude.Text
  set newValue AppIntegrationsConfigurationProperty {..}
    = AppIntegrationsConfigurationProperty
        {appIntegrationArn = newValue, ..}
instance Property "ObjectFields" AppIntegrationsConfigurationProperty where
  type PropertyType "ObjectFields" AppIntegrationsConfigurationProperty = ValueList Prelude.Text
  set newValue AppIntegrationsConfigurationProperty {..}
    = AppIntegrationsConfigurationProperty
        {objectFields = Prelude.pure newValue, ..}