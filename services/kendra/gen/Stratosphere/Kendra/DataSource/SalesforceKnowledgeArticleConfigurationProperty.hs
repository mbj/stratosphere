module Stratosphere.Kendra.DataSource.SalesforceKnowledgeArticleConfigurationProperty (
        module Exports,
        SalesforceKnowledgeArticleConfigurationProperty(..),
        mkSalesforceKnowledgeArticleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceCustomKnowledgeArticleTypeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceStandardKnowledgeArticleTypeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceKnowledgeArticleConfigurationProperty
  = SalesforceKnowledgeArticleConfigurationProperty {customKnowledgeArticleTypeConfigurations :: (Prelude.Maybe [SalesforceCustomKnowledgeArticleTypeConfigurationProperty]),
                                                     includedStates :: (ValueList Prelude.Text),
                                                     standardKnowledgeArticleTypeConfiguration :: (Prelude.Maybe SalesforceStandardKnowledgeArticleTypeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceKnowledgeArticleConfigurationProperty ::
  ValueList Prelude.Text
  -> SalesforceKnowledgeArticleConfigurationProperty
mkSalesforceKnowledgeArticleConfigurationProperty includedStates
  = SalesforceKnowledgeArticleConfigurationProperty
      {includedStates = includedStates,
       customKnowledgeArticleTypeConfigurations = Prelude.Nothing,
       standardKnowledgeArticleTypeConfiguration = Prelude.Nothing}
instance ToResourceProperties SalesforceKnowledgeArticleConfigurationProperty where
  toResourceProperties
    SalesforceKnowledgeArticleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceKnowledgeArticleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IncludedStates" JSON..= includedStates]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomKnowledgeArticleTypeConfigurations"
                                 Prelude.<$> customKnowledgeArticleTypeConfigurations,
                               (JSON..=) "StandardKnowledgeArticleTypeConfiguration"
                                 Prelude.<$> standardKnowledgeArticleTypeConfiguration]))}
instance JSON.ToJSON SalesforceKnowledgeArticleConfigurationProperty where
  toJSON SalesforceKnowledgeArticleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IncludedStates" JSON..= includedStates]
              (Prelude.catMaybes
                 [(JSON..=) "CustomKnowledgeArticleTypeConfigurations"
                    Prelude.<$> customKnowledgeArticleTypeConfigurations,
                  (JSON..=) "StandardKnowledgeArticleTypeConfiguration"
                    Prelude.<$> standardKnowledgeArticleTypeConfiguration])))
instance Property "CustomKnowledgeArticleTypeConfigurations" SalesforceKnowledgeArticleConfigurationProperty where
  type PropertyType "CustomKnowledgeArticleTypeConfigurations" SalesforceKnowledgeArticleConfigurationProperty = [SalesforceCustomKnowledgeArticleTypeConfigurationProperty]
  set newValue SalesforceKnowledgeArticleConfigurationProperty {..}
    = SalesforceKnowledgeArticleConfigurationProperty
        {customKnowledgeArticleTypeConfigurations = Prelude.pure newValue,
         ..}
instance Property "IncludedStates" SalesforceKnowledgeArticleConfigurationProperty where
  type PropertyType "IncludedStates" SalesforceKnowledgeArticleConfigurationProperty = ValueList Prelude.Text
  set newValue SalesforceKnowledgeArticleConfigurationProperty {..}
    = SalesforceKnowledgeArticleConfigurationProperty
        {includedStates = newValue, ..}
instance Property "StandardKnowledgeArticleTypeConfiguration" SalesforceKnowledgeArticleConfigurationProperty where
  type PropertyType "StandardKnowledgeArticleTypeConfiguration" SalesforceKnowledgeArticleConfigurationProperty = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
  set newValue SalesforceKnowledgeArticleConfigurationProperty {..}
    = SalesforceKnowledgeArticleConfigurationProperty
        {standardKnowledgeArticleTypeConfiguration = Prelude.pure newValue,
         ..}