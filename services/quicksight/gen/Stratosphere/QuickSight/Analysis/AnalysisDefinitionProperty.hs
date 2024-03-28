module Stratosphere.QuickSight.Analysis.AnalysisDefinitionProperty (
        module Exports, AnalysisDefinitionProperty(..),
        mkAnalysisDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AssetOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CalculatedFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataSetIdentifierDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisDefinitionProperty
  = AnalysisDefinitionProperty {analysisDefaults :: (Prelude.Maybe AnalysisDefaultsProperty),
                                calculatedFields :: (Prelude.Maybe [CalculatedFieldProperty]),
                                columnConfigurations :: (Prelude.Maybe [ColumnConfigurationProperty]),
                                dataSetIdentifierDeclarations :: [DataSetIdentifierDeclarationProperty],
                                filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                                options :: (Prelude.Maybe AssetOptionsProperty),
                                parameterDeclarations :: (Prelude.Maybe [ParameterDeclarationProperty]),
                                sheets :: (Prelude.Maybe [SheetDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisDefinitionProperty ::
  [DataSetIdentifierDeclarationProperty]
  -> AnalysisDefinitionProperty
mkAnalysisDefinitionProperty dataSetIdentifierDeclarations
  = AnalysisDefinitionProperty
      {dataSetIdentifierDeclarations = dataSetIdentifierDeclarations,
       analysisDefaults = Prelude.Nothing,
       calculatedFields = Prelude.Nothing,
       columnConfigurations = Prelude.Nothing,
       filterGroups = Prelude.Nothing, options = Prelude.Nothing,
       parameterDeclarations = Prelude.Nothing, sheets = Prelude.Nothing}
instance ToResourceProperties AnalysisDefinitionProperty where
  toResourceProperties AnalysisDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifierDeclarations"
                              JSON..= dataSetIdentifierDeclarations]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalysisDefaults" Prelude.<$> analysisDefaults,
                               (JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                               (JSON..=) "ColumnConfigurations" Prelude.<$> columnConfigurations,
                               (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "ParameterDeclarations"
                                 Prelude.<$> parameterDeclarations,
                               (JSON..=) "Sheets" Prelude.<$> sheets]))}
instance JSON.ToJSON AnalysisDefinitionProperty where
  toJSON AnalysisDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifierDeclarations"
                 JSON..= dataSetIdentifierDeclarations]
              (Prelude.catMaybes
                 [(JSON..=) "AnalysisDefaults" Prelude.<$> analysisDefaults,
                  (JSON..=) "CalculatedFields" Prelude.<$> calculatedFields,
                  (JSON..=) "ColumnConfigurations" Prelude.<$> columnConfigurations,
                  (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "ParameterDeclarations"
                    Prelude.<$> parameterDeclarations,
                  (JSON..=) "Sheets" Prelude.<$> sheets])))
instance Property "AnalysisDefaults" AnalysisDefinitionProperty where
  type PropertyType "AnalysisDefaults" AnalysisDefinitionProperty = AnalysisDefaultsProperty
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {analysisDefaults = Prelude.pure newValue, ..}
instance Property "CalculatedFields" AnalysisDefinitionProperty where
  type PropertyType "CalculatedFields" AnalysisDefinitionProperty = [CalculatedFieldProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {calculatedFields = Prelude.pure newValue, ..}
instance Property "ColumnConfigurations" AnalysisDefinitionProperty where
  type PropertyType "ColumnConfigurations" AnalysisDefinitionProperty = [ColumnConfigurationProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {columnConfigurations = Prelude.pure newValue, ..}
instance Property "DataSetIdentifierDeclarations" AnalysisDefinitionProperty where
  type PropertyType "DataSetIdentifierDeclarations" AnalysisDefinitionProperty = [DataSetIdentifierDeclarationProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {dataSetIdentifierDeclarations = newValue, ..}
instance Property "FilterGroups" AnalysisDefinitionProperty where
  type PropertyType "FilterGroups" AnalysisDefinitionProperty = [FilterGroupProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {filterGroups = Prelude.pure newValue, ..}
instance Property "Options" AnalysisDefinitionProperty where
  type PropertyType "Options" AnalysisDefinitionProperty = AssetOptionsProperty
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty {options = Prelude.pure newValue, ..}
instance Property "ParameterDeclarations" AnalysisDefinitionProperty where
  type PropertyType "ParameterDeclarations" AnalysisDefinitionProperty = [ParameterDeclarationProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {parameterDeclarations = Prelude.pure newValue, ..}
instance Property "Sheets" AnalysisDefinitionProperty where
  type PropertyType "Sheets" AnalysisDefinitionProperty = [SheetDefinitionProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty {sheets = Prelude.pure newValue, ..}