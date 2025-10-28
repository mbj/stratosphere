module Stratosphere.Kendra.DataSource.SalesforceChatterFeedConfigurationProperty (
        module Exports, SalesforceChatterFeedConfigurationProperty(..),
        mkSalesforceChatterFeedConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceChatterFeedConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html>
    SalesforceChatterFeedConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-documentdatafieldname>
                                                documentDataFieldName :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-documenttitlefieldname>
                                                documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-fieldmappings>
                                                fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-includefiltertypes>
                                                includeFilterTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceChatterFeedConfigurationProperty ::
  Value Prelude.Text -> SalesforceChatterFeedConfigurationProperty
mkSalesforceChatterFeedConfigurationProperty documentDataFieldName
  = SalesforceChatterFeedConfigurationProperty
      {haddock_workaround_ = (),
       documentDataFieldName = documentDataFieldName,
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       includeFilterTypes = Prelude.Nothing}
instance ToResourceProperties SalesforceChatterFeedConfigurationProperty where
  toResourceProperties
    SalesforceChatterFeedConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceChatterFeedConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "IncludeFilterTypes" Prelude.<$> includeFilterTypes]))}
instance JSON.ToJSON SalesforceChatterFeedConfigurationProperty where
  toJSON SalesforceChatterFeedConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "IncludeFilterTypes" Prelude.<$> includeFilterTypes])))
instance Property "DocumentDataFieldName" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "DocumentDataFieldName" SalesforceChatterFeedConfigurationProperty = Value Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceChatterFeedConfigurationProperty = Value Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceChatterFeedConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "IncludeFilterTypes" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "IncludeFilterTypes" SalesforceChatterFeedConfigurationProperty = ValueList Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {includeFilterTypes = Prelude.pure newValue, ..}