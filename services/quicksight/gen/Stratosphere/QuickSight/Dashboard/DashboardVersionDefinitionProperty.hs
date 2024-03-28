module Stratosphere.QuickSight.Dashboard.DashboardVersionDefinitionProperty (
        module Exports, DashboardVersionDefinitionProperty(..),
        mkDashboardVersionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AnalysisDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AssetOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CalculatedFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataSetIdentifierDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data DashboardVersionDefinitionProperty
  = DashboardVersionDefinitionProperty {analysisDefaults :: (Prelude.Maybe AnalysisDefaultsProperty),
                                        calculatedFields :: (Prelude.Maybe [CalculatedFieldProperty]),
                                        columnConfigurations :: (Prelude.Maybe [ColumnConfigurationProperty]),
                                        dataSetIdentifierDeclarations :: [DataSetIdentifierDeclarationProperty],
                                        filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                                        options :: (Prelude.Maybe AssetOptionsProperty),
                                        parameterDeclarations :: (Prelude.Maybe [ParameterDeclarationProperty]),
                                        sheets :: (Prelude.Maybe [SheetDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardVersionDefinitionProperty ::
  [DataSetIdentifierDeclarationProperty]
  -> DashboardVersionDefinitionProperty
mkDashboardVersionDefinitionProperty dataSetIdentifierDeclarations
  = DashboardVersionDefinitionProperty
      {dataSetIdentifierDeclarations = dataSetIdentifierDeclarations,
       analysisDefaults = Prelude.Nothing,
       calculatedFields = Prelude.Nothing,
       columnConfigurations = Prelude.Nothing,
       filterGroups = Prelude.Nothing, options = Prelude.Nothing,
       parameterDeclarations = Prelude.Nothing, sheets = Prelude.Nothing}
instance ToResourceProperties DashboardVersionDefinitionProperty where
  toResourceProperties DashboardVersionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardVersionDefinition",
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
instance JSON.ToJSON DashboardVersionDefinitionProperty where
  toJSON DashboardVersionDefinitionProperty {..}
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
instance Property "AnalysisDefaults" DashboardVersionDefinitionProperty where
  type PropertyType "AnalysisDefaults" DashboardVersionDefinitionProperty = AnalysisDefaultsProperty
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {analysisDefaults = Prelude.pure newValue, ..}
instance Property "CalculatedFields" DashboardVersionDefinitionProperty where
  type PropertyType "CalculatedFields" DashboardVersionDefinitionProperty = [CalculatedFieldProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {calculatedFields = Prelude.pure newValue, ..}
instance Property "ColumnConfigurations" DashboardVersionDefinitionProperty where
  type PropertyType "ColumnConfigurations" DashboardVersionDefinitionProperty = [ColumnConfigurationProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {columnConfigurations = Prelude.pure newValue, ..}
instance Property "DataSetIdentifierDeclarations" DashboardVersionDefinitionProperty where
  type PropertyType "DataSetIdentifierDeclarations" DashboardVersionDefinitionProperty = [DataSetIdentifierDeclarationProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {dataSetIdentifierDeclarations = newValue, ..}
instance Property "FilterGroups" DashboardVersionDefinitionProperty where
  type PropertyType "FilterGroups" DashboardVersionDefinitionProperty = [FilterGroupProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {filterGroups = Prelude.pure newValue, ..}
instance Property "Options" DashboardVersionDefinitionProperty where
  type PropertyType "Options" DashboardVersionDefinitionProperty = AssetOptionsProperty
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {options = Prelude.pure newValue, ..}
instance Property "ParameterDeclarations" DashboardVersionDefinitionProperty where
  type PropertyType "ParameterDeclarations" DashboardVersionDefinitionProperty = [ParameterDeclarationProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {parameterDeclarations = Prelude.pure newValue, ..}
instance Property "Sheets" DashboardVersionDefinitionProperty where
  type PropertyType "Sheets" DashboardVersionDefinitionProperty = [SheetDefinitionProperty]
  set newValue DashboardVersionDefinitionProperty {..}
    = DashboardVersionDefinitionProperty
        {sheets = Prelude.pure newValue, ..}