module Stratosphere.Kendra.DataSource.ColumnConfigurationProperty (
        module Exports, ColumnConfigurationProperty(..),
        mkColumnConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnConfigurationProperty
  = ColumnConfigurationProperty {changeDetectingColumns :: (ValueList Prelude.Text),
                                 documentDataColumnName :: (Value Prelude.Text),
                                 documentIdColumnName :: (Value Prelude.Text),
                                 documentTitleColumnName :: (Prelude.Maybe (Value Prelude.Text)),
                                 fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnConfigurationProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ColumnConfigurationProperty
mkColumnConfigurationProperty
  changeDetectingColumns
  documentDataColumnName
  documentIdColumnName
  = ColumnConfigurationProperty
      {changeDetectingColumns = changeDetectingColumns,
       documentDataColumnName = documentDataColumnName,
       documentIdColumnName = documentIdColumnName,
       documentTitleColumnName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties ColumnConfigurationProperty where
  toResourceProperties ColumnConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ColumnConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChangeDetectingColumns" JSON..= changeDetectingColumns,
                            "DocumentDataColumnName" JSON..= documentDataColumnName,
                            "DocumentIdColumnName" JSON..= documentIdColumnName]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleColumnName"
                                 Prelude.<$> documentTitleColumnName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))}
instance JSON.ToJSON ColumnConfigurationProperty where
  toJSON ColumnConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChangeDetectingColumns" JSON..= changeDetectingColumns,
               "DocumentDataColumnName" JSON..= documentDataColumnName,
               "DocumentIdColumnName" JSON..= documentIdColumnName]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleColumnName"
                    Prelude.<$> documentTitleColumnName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])))
instance Property "ChangeDetectingColumns" ColumnConfigurationProperty where
  type PropertyType "ChangeDetectingColumns" ColumnConfigurationProperty = ValueList Prelude.Text
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {changeDetectingColumns = newValue, ..}
instance Property "DocumentDataColumnName" ColumnConfigurationProperty where
  type PropertyType "DocumentDataColumnName" ColumnConfigurationProperty = Value Prelude.Text
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {documentDataColumnName = newValue, ..}
instance Property "DocumentIdColumnName" ColumnConfigurationProperty where
  type PropertyType "DocumentIdColumnName" ColumnConfigurationProperty = Value Prelude.Text
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty {documentIdColumnName = newValue, ..}
instance Property "DocumentTitleColumnName" ColumnConfigurationProperty where
  type PropertyType "DocumentTitleColumnName" ColumnConfigurationProperty = Value Prelude.Text
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {documentTitleColumnName = Prelude.pure newValue, ..}
instance Property "FieldMappings" ColumnConfigurationProperty where
  type PropertyType "FieldMappings" ColumnConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}