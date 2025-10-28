module Stratosphere.Wisdom.KnowledgeBase.SourceConfigurationProperty (
        module Exports, SourceConfigurationProperty(..),
        mkSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.AppIntegrationsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.ManagedSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html>
    SourceConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html#cfn-wisdom-knowledgebase-sourceconfiguration-appintegrations>
                                 appIntegrations :: (Prelude.Maybe AppIntegrationsConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html#cfn-wisdom-knowledgebase-sourceconfiguration-managedsourceconfiguration>
                                 managedSourceConfiguration :: (Prelude.Maybe ManagedSourceConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigurationProperty :: SourceConfigurationProperty
mkSourceConfigurationProperty
  = SourceConfigurationProperty
      {haddock_workaround_ = (), appIntegrations = Prelude.Nothing,
       managedSourceConfiguration = Prelude.Nothing}
instance ToResourceProperties SourceConfigurationProperty where
  toResourceProperties SourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.SourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppIntegrations" Prelude.<$> appIntegrations,
                            (JSON..=) "ManagedSourceConfiguration"
                              Prelude.<$> managedSourceConfiguration])}
instance JSON.ToJSON SourceConfigurationProperty where
  toJSON SourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppIntegrations" Prelude.<$> appIntegrations,
               (JSON..=) "ManagedSourceConfiguration"
                 Prelude.<$> managedSourceConfiguration]))
instance Property "AppIntegrations" SourceConfigurationProperty where
  type PropertyType "AppIntegrations" SourceConfigurationProperty = AppIntegrationsConfigurationProperty
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {appIntegrations = Prelude.pure newValue, ..}
instance Property "ManagedSourceConfiguration" SourceConfigurationProperty where
  type PropertyType "ManagedSourceConfiguration" SourceConfigurationProperty = ManagedSourceConfigurationProperty
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {managedSourceConfiguration = Prelude.pure newValue, ..}