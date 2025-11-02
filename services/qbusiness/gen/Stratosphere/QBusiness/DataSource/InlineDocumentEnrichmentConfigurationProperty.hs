module Stratosphere.QBusiness.DataSource.InlineDocumentEnrichmentConfigurationProperty (
        module Exports, InlineDocumentEnrichmentConfigurationProperty(..),
        mkInlineDocumentEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DocumentAttributeConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DocumentAttributeTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InlineDocumentEnrichmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-inlinedocumentenrichmentconfiguration.html>
    InlineDocumentEnrichmentConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-inlinedocumentenrichmentconfiguration.html#cfn-qbusiness-datasource-inlinedocumentenrichmentconfiguration-condition>
                                                   condition :: (Prelude.Maybe DocumentAttributeConditionProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-inlinedocumentenrichmentconfiguration.html#cfn-qbusiness-datasource-inlinedocumentenrichmentconfiguration-documentcontentoperator>
                                                   documentContentOperator :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-inlinedocumentenrichmentconfiguration.html#cfn-qbusiness-datasource-inlinedocumentenrichmentconfiguration-target>
                                                   target :: (Prelude.Maybe DocumentAttributeTargetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInlineDocumentEnrichmentConfigurationProperty ::
  InlineDocumentEnrichmentConfigurationProperty
mkInlineDocumentEnrichmentConfigurationProperty
  = InlineDocumentEnrichmentConfigurationProperty
      {haddock_workaround_ = (), condition = Prelude.Nothing,
       documentContentOperator = Prelude.Nothing,
       target = Prelude.Nothing}
instance ToResourceProperties InlineDocumentEnrichmentConfigurationProperty where
  toResourceProperties
    InlineDocumentEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.InlineDocumentEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "DocumentContentOperator"
                              Prelude.<$> documentContentOperator,
                            (JSON..=) "Target" Prelude.<$> target])}
instance JSON.ToJSON InlineDocumentEnrichmentConfigurationProperty where
  toJSON InlineDocumentEnrichmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "DocumentContentOperator"
                 Prelude.<$> documentContentOperator,
               (JSON..=) "Target" Prelude.<$> target]))
instance Property "Condition" InlineDocumentEnrichmentConfigurationProperty where
  type PropertyType "Condition" InlineDocumentEnrichmentConfigurationProperty = DocumentAttributeConditionProperty
  set newValue InlineDocumentEnrichmentConfigurationProperty {..}
    = InlineDocumentEnrichmentConfigurationProperty
        {condition = Prelude.pure newValue, ..}
instance Property "DocumentContentOperator" InlineDocumentEnrichmentConfigurationProperty where
  type PropertyType "DocumentContentOperator" InlineDocumentEnrichmentConfigurationProperty = Value Prelude.Text
  set newValue InlineDocumentEnrichmentConfigurationProperty {..}
    = InlineDocumentEnrichmentConfigurationProperty
        {documentContentOperator = Prelude.pure newValue, ..}
instance Property "Target" InlineDocumentEnrichmentConfigurationProperty where
  type PropertyType "Target" InlineDocumentEnrichmentConfigurationProperty = DocumentAttributeTargetProperty
  set newValue InlineDocumentEnrichmentConfigurationProperty {..}
    = InlineDocumentEnrichmentConfigurationProperty
        {target = Prelude.pure newValue, ..}