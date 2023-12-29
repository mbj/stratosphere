module Stratosphere.QuickSight.Dashboard.ParameterDropDownControlProperty (
        module Exports, ParameterDropDownControlProperty(..),
        mkParameterDropDownControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DropDownControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ParameterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDropDownControlProperty
  = ParameterDropDownControlProperty {cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                      displayOptions :: (Prelude.Maybe DropDownControlDisplayOptionsProperty),
                                      parameterControlId :: (Value Prelude.Text),
                                      selectableValues :: (Prelude.Maybe ParameterSelectableValuesProperty),
                                      sourceParameterName :: (Value Prelude.Text),
                                      title :: (Value Prelude.Text),
                                      type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDropDownControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterDropDownControlProperty
mkParameterDropDownControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterDropDownControlProperty
      {parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ParameterDropDownControlProperty where
  toResourceProperties ParameterDropDownControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterDropDownControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ParameterDropDownControlProperty where
  toJSON ParameterDropDownControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" ParameterDropDownControlProperty where
  type PropertyType "CascadingControlConfiguration" ParameterDropDownControlProperty = CascadingControlConfigurationProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "DisplayOptions" ParameterDropDownControlProperty where
  type PropertyType "DisplayOptions" ParameterDropDownControlProperty = DropDownControlDisplayOptionsProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterDropDownControlProperty where
  type PropertyType "ParameterControlId" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {parameterControlId = newValue, ..}
instance Property "SelectableValues" ParameterDropDownControlProperty where
  type PropertyType "SelectableValues" ParameterDropDownControlProperty = ParameterSelectableValuesProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceParameterName" ParameterDropDownControlProperty where
  type PropertyType "SourceParameterName" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterDropDownControlProperty where
  type PropertyType "Title" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty {title = newValue, ..}
instance Property "Type" ParameterDropDownControlProperty where
  type PropertyType "Type" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {type' = Prelude.pure newValue, ..}