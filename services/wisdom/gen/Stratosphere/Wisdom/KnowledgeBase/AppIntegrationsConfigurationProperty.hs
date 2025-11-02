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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html>
    AppIntegrationsConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html#cfn-wisdom-knowledgebase-appintegrationsconfiguration-appintegrationarn>
                                          appIntegrationArn :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html#cfn-wisdom-knowledgebase-appintegrationsconfiguration-objectfields>
                                          objectFields :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppIntegrationsConfigurationProperty ::
  Value Prelude.Text -> AppIntegrationsConfigurationProperty
mkAppIntegrationsConfigurationProperty appIntegrationArn
  = AppIntegrationsConfigurationProperty
      {haddock_workaround_ = (), appIntegrationArn = appIntegrationArn,
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