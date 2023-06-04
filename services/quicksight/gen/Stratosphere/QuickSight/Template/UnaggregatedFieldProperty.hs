module Stratosphere.QuickSight.Template.UnaggregatedFieldProperty (
        module Exports, UnaggregatedFieldProperty(..),
        mkUnaggregatedFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnaggregatedFieldProperty
  = UnaggregatedFieldProperty {column :: ColumnIdentifierProperty,
                               fieldId :: (Value Prelude.Text),
                               formatConfiguration :: (Prelude.Maybe FormatConfigurationProperty)}
mkUnaggregatedFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> UnaggregatedFieldProperty
mkUnaggregatedFieldProperty column fieldId
  = UnaggregatedFieldProperty
      {column = column, fieldId = fieldId,
       formatConfiguration = Prelude.Nothing}
instance ToResourceProperties UnaggregatedFieldProperty where
  toResourceProperties UnaggregatedFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.UnaggregatedField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatConfiguration"
                                 Prelude.<$> formatConfiguration]))}
instance JSON.ToJSON UnaggregatedFieldProperty where
  toJSON UnaggregatedFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "FormatConfiguration"
                    Prelude.<$> formatConfiguration])))
instance Property "Column" UnaggregatedFieldProperty where
  type PropertyType "Column" UnaggregatedFieldProperty = ColumnIdentifierProperty
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty {column = newValue, ..}
instance Property "FieldId" UnaggregatedFieldProperty where
  type PropertyType "FieldId" UnaggregatedFieldProperty = Value Prelude.Text
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" UnaggregatedFieldProperty where
  type PropertyType "FormatConfiguration" UnaggregatedFieldProperty = FormatConfigurationProperty
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}