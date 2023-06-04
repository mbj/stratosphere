module Stratosphere.QuickSight.Template.TemplateVersionDefinitionProperty (
        module Exports, TemplateVersionDefinitionProperty(..),
        mkTemplateVersionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AnalysisDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CalculatedFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataSetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data TemplateVersionDefinitionProperty
  = TemplateVersionDefinitionProperty {analysisDefaults :: (Prelude.Maybe AnalysisDefaultsProperty),
                                       calculatedFields :: (Prelude.Maybe [CalculatedFieldProperty]),
                                       columnConfigurations :: (Prelude.Maybe [ColumnConfigurationProperty]),
                                       dataSetConfigurations :: [DataSetConfigurationProperty],
                                       filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                                       parameterDeclarations :: (Prelude.Maybe [ParameterDeclarationProperty]),
                                       sheets :: (Prelude.Maybe [SheetDefinitionProperty])}
mkTemplateVersionDefinitionProperty ::
  [DataSetConfigurationProperty] -> TemplateVersionDefinitionProperty
mkTemplateVersionDefinitionProperty dataSetConfigurations
  = TemplateVersionDefinitionProperty
      {dataSetConfigurations = dataSetConfigurations,
       analysisDefaults = Prelude.Nothing,
       calculatedFields = Prelude.Nothing,
       columnConfigurations = Prelude.Nothing,
       filterGroups = Prelude.Nothing,
       parameterDeclarations = Prelude.Nothing, sheets = Prelude.Nothing}
instance ToResourceProperties TemplateVersionDefinitionProperty where
  toResourceProperties TemplateVersionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateVersionDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetConfigurations" JSON..= dataSetConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalysisDefaults" Prelude.<$> analysisDefaults,
                               (JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                               (JSON..=) "ColumnConfigurations" Prelude.<$> columnConfigurations,
                               (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
                               (JSON..=) "ParameterDeclarations"
                                 Prelude.<$> parameterDeclarations,
                               (JSON..=) "Sheets" Prelude.<$> sheets]))}
instance JSON.ToJSON TemplateVersionDefinitionProperty where
  toJSON TemplateVersionDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetConfigurations" JSON..= dataSetConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "AnalysisDefaults" Prelude.<$> analysisDefaults,
                  (JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                  (JSON..=) "ColumnConfigurations" Prelude.<$> columnConfigurations,
                  (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
                  (JSON..=) "ParameterDeclarations"
                    Prelude.<$> parameterDeclarations,
                  (JSON..=) "Sheets" Prelude.<$> sheets])))
instance Property "AnalysisDefaults" TemplateVersionDefinitionProperty where
  type PropertyType "AnalysisDefaults" TemplateVersionDefinitionProperty = AnalysisDefaultsProperty
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {analysisDefaults = Prelude.pure newValue, ..}
instance Property "CalculatedFields" TemplateVersionDefinitionProperty where
  type PropertyType "CalculatedFields" TemplateVersionDefinitionProperty = [CalculatedFieldProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {calculatedFields = Prelude.pure newValue, ..}
instance Property "ColumnConfigurations" TemplateVersionDefinitionProperty where
  type PropertyType "ColumnConfigurations" TemplateVersionDefinitionProperty = [ColumnConfigurationProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {columnConfigurations = Prelude.pure newValue, ..}
instance Property "DataSetConfigurations" TemplateVersionDefinitionProperty where
  type PropertyType "DataSetConfigurations" TemplateVersionDefinitionProperty = [DataSetConfigurationProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {dataSetConfigurations = newValue, ..}
instance Property "FilterGroups" TemplateVersionDefinitionProperty where
  type PropertyType "FilterGroups" TemplateVersionDefinitionProperty = [FilterGroupProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {filterGroups = Prelude.pure newValue, ..}
instance Property "ParameterDeclarations" TemplateVersionDefinitionProperty where
  type PropertyType "ParameterDeclarations" TemplateVersionDefinitionProperty = [ParameterDeclarationProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {parameterDeclarations = Prelude.pure newValue, ..}
instance Property "Sheets" TemplateVersionDefinitionProperty where
  type PropertyType "Sheets" TemplateVersionDefinitionProperty = [SheetDefinitionProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {sheets = Prelude.pure newValue, ..}