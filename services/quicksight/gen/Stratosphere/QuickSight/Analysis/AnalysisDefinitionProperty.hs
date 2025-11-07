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
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.QueryExecutionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StaticFileProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html>
    AnalysisDefinitionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-analysisdefaults>
                                analysisDefaults :: (Prelude.Maybe AnalysisDefaultsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-calculatedfields>
                                calculatedFields :: (Prelude.Maybe [CalculatedFieldProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-columnconfigurations>
                                columnConfigurations :: (Prelude.Maybe [ColumnConfigurationProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-datasetidentifierdeclarations>
                                dataSetIdentifierDeclarations :: [DataSetIdentifierDeclarationProperty],
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-filtergroups>
                                filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-options>
                                options :: (Prelude.Maybe AssetOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-parameterdeclarations>
                                parameterDeclarations :: (Prelude.Maybe [ParameterDeclarationProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-queryexecutionoptions>
                                queryExecutionOptions :: (Prelude.Maybe QueryExecutionOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-sheets>
                                sheets :: (Prelude.Maybe [SheetDefinitionProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-staticfiles>
                                staticFiles :: (Prelude.Maybe [StaticFileProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisDefinitionProperty ::
  [DataSetIdentifierDeclarationProperty]
  -> AnalysisDefinitionProperty
mkAnalysisDefinitionProperty dataSetIdentifierDeclarations
  = AnalysisDefinitionProperty
      {haddock_workaround_ = (),
       dataSetIdentifierDeclarations = dataSetIdentifierDeclarations,
       analysisDefaults = Prelude.Nothing,
       calculatedFields = Prelude.Nothing,
       columnConfigurations = Prelude.Nothing,
       filterGroups = Prelude.Nothing, options = Prelude.Nothing,
       parameterDeclarations = Prelude.Nothing,
       queryExecutionOptions = Prelude.Nothing, sheets = Prelude.Nothing,
       staticFiles = Prelude.Nothing}
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
                               (JSON..=) "QueryExecutionOptions"
                                 Prelude.<$> queryExecutionOptions,
                               (JSON..=) "Sheets" Prelude.<$> sheets,
                               (JSON..=) "StaticFiles" Prelude.<$> staticFiles]))}
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
                  (JSON..=) "QueryExecutionOptions"
                    Prelude.<$> queryExecutionOptions,
                  (JSON..=) "Sheets" Prelude.<$> sheets,
                  (JSON..=) "StaticFiles" Prelude.<$> staticFiles])))
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
instance Property "QueryExecutionOptions" AnalysisDefinitionProperty where
  type PropertyType "QueryExecutionOptions" AnalysisDefinitionProperty = QueryExecutionOptionsProperty
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {queryExecutionOptions = Prelude.pure newValue, ..}
instance Property "Sheets" AnalysisDefinitionProperty where
  type PropertyType "Sheets" AnalysisDefinitionProperty = [SheetDefinitionProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty {sheets = Prelude.pure newValue, ..}
instance Property "StaticFiles" AnalysisDefinitionProperty where
  type PropertyType "StaticFiles" AnalysisDefinitionProperty = [StaticFileProperty]
  set newValue AnalysisDefinitionProperty {..}
    = AnalysisDefinitionProperty
        {staticFiles = Prelude.pure newValue, ..}