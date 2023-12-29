module Stratosphere.QuickSight.Analysis.TableFieldOptionProperty (
        module Exports, TableFieldOptionProperty(..),
        mkTableFieldOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableFieldURLConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldOptionProperty
  = TableFieldOptionProperty {customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              fieldId :: (Value Prelude.Text),
                              uRLStyling :: (Prelude.Maybe TableFieldURLConfigurationProperty),
                              visibility :: (Prelude.Maybe (Value Prelude.Text)),
                              width :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldOptionProperty ::
  Value Prelude.Text -> TableFieldOptionProperty
mkTableFieldOptionProperty fieldId
  = TableFieldOptionProperty
      {fieldId = fieldId, customLabel = Prelude.Nothing,
       uRLStyling = Prelude.Nothing, visibility = Prelude.Nothing,
       width = Prelude.Nothing}
instance ToResourceProperties TableFieldOptionProperty where
  toResourceProperties TableFieldOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableFieldOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                               (JSON..=) "URLStyling" Prelude.<$> uRLStyling,
                               (JSON..=) "Visibility" Prelude.<$> visibility,
                               (JSON..=) "Width" Prelude.<$> width]))}
instance JSON.ToJSON TableFieldOptionProperty where
  toJSON TableFieldOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                  (JSON..=) "URLStyling" Prelude.<$> uRLStyling,
                  (JSON..=) "Visibility" Prelude.<$> visibility,
                  (JSON..=) "Width" Prelude.<$> width])))
instance Property "CustomLabel" TableFieldOptionProperty where
  type PropertyType "CustomLabel" TableFieldOptionProperty = Value Prelude.Text
  set newValue TableFieldOptionProperty {..}
    = TableFieldOptionProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "FieldId" TableFieldOptionProperty where
  type PropertyType "FieldId" TableFieldOptionProperty = Value Prelude.Text
  set newValue TableFieldOptionProperty {..}
    = TableFieldOptionProperty {fieldId = newValue, ..}
instance Property "URLStyling" TableFieldOptionProperty where
  type PropertyType "URLStyling" TableFieldOptionProperty = TableFieldURLConfigurationProperty
  set newValue TableFieldOptionProperty {..}
    = TableFieldOptionProperty {uRLStyling = Prelude.pure newValue, ..}
instance Property "Visibility" TableFieldOptionProperty where
  type PropertyType "Visibility" TableFieldOptionProperty = Value Prelude.Text
  set newValue TableFieldOptionProperty {..}
    = TableFieldOptionProperty {visibility = Prelude.pure newValue, ..}
instance Property "Width" TableFieldOptionProperty where
  type PropertyType "Width" TableFieldOptionProperty = Value Prelude.Text
  set newValue TableFieldOptionProperty {..}
    = TableFieldOptionProperty {width = Prelude.pure newValue, ..}