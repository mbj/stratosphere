module Stratosphere.Wisdom.KnowledgeBase.SourceConfigurationProperty (
        module Exports, SourceConfigurationProperty(..),
        mkSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.AppIntegrationsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SourceConfigurationProperty
  = SourceConfigurationProperty {appIntegrations :: AppIntegrationsConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigurationProperty ::
  AppIntegrationsConfigurationProperty -> SourceConfigurationProperty
mkSourceConfigurationProperty appIntegrations
  = SourceConfigurationProperty {appIntegrations = appIntegrations}
instance ToResourceProperties SourceConfigurationProperty where
  toResourceProperties SourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.SourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["AppIntegrations" JSON..= appIntegrations]}
instance JSON.ToJSON SourceConfigurationProperty where
  toJSON SourceConfigurationProperty {..}
    = JSON.object ["AppIntegrations" JSON..= appIntegrations]
instance Property "AppIntegrations" SourceConfigurationProperty where
  type PropertyType "AppIntegrations" SourceConfigurationProperty = AppIntegrationsConfigurationProperty
  set newValue SourceConfigurationProperty {}
    = SourceConfigurationProperty {appIntegrations = newValue, ..}