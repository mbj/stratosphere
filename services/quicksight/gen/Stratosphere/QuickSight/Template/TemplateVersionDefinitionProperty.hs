module Stratosphere.QuickSight.Template.TemplateVersionDefinitionProperty (
        module Exports, TemplateVersionDefinitionProperty(..),
        mkTemplateVersionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AnalysisDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AssetOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CalculatedFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataSetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.QueryExecutionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data TemplateVersionDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html>
    TemplateVersionDefinitionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-analysisdefaults>
                                       analysisDefaults :: (Prelude.Maybe AnalysisDefaultsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-calculatedfields>
                                       calculatedFields :: (Prelude.Maybe [CalculatedFieldProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-columnconfigurations>
                                       columnConfigurations :: (Prelude.Maybe [ColumnConfigurationProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-datasetconfigurations>
                                       dataSetConfigurations :: [DataSetConfigurationProperty],
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-filtergroups>
                                       filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-options>
                                       options :: (Prelude.Maybe AssetOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-parameterdeclarations>
                                       parameterDeclarations :: (Prelude.Maybe [ParameterDeclarationProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-queryexecutionoptions>
                                       queryExecutionOptions :: (Prelude.Maybe QueryExecutionOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversiondefinition.html#cfn-quicksight-template-templateversiondefinition-sheets>
                                       sheets :: (Prelude.Maybe [SheetDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateVersionDefinitionProperty ::
  [DataSetConfigurationProperty] -> TemplateVersionDefinitionProperty
mkTemplateVersionDefinitionProperty dataSetConfigurations
  = TemplateVersionDefinitionProperty
      {haddock_workaround_ = (),
       dataSetConfigurations = dataSetConfigurations,
       analysisDefaults = Prelude.Nothing,
       calculatedFields = Prelude.Nothing,
       columnConfigurations = Prelude.Nothing,
       filterGroups = Prelude.Nothing, options = Prelude.Nothing,
       parameterDeclarations = Prelude.Nothing,
       queryExecutionOptions = Prelude.Nothing, sheets = Prelude.Nothing}
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
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "ParameterDeclarations"
                                 Prelude.<$> parameterDeclarations,
                               (JSON..=) "QueryExecutionOptions"
                                 Prelude.<$> queryExecutionOptions,
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
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "ParameterDeclarations"
                    Prelude.<$> parameterDeclarations,
                  (JSON..=) "QueryExecutionOptions"
                    Prelude.<$> queryExecutionOptions,
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
instance Property "Options" TemplateVersionDefinitionProperty where
  type PropertyType "Options" TemplateVersionDefinitionProperty = AssetOptionsProperty
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {options = Prelude.pure newValue, ..}
instance Property "ParameterDeclarations" TemplateVersionDefinitionProperty where
  type PropertyType "ParameterDeclarations" TemplateVersionDefinitionProperty = [ParameterDeclarationProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {parameterDeclarations = Prelude.pure newValue, ..}
instance Property "QueryExecutionOptions" TemplateVersionDefinitionProperty where
  type PropertyType "QueryExecutionOptions" TemplateVersionDefinitionProperty = QueryExecutionOptionsProperty
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {queryExecutionOptions = Prelude.pure newValue, ..}
instance Property "Sheets" TemplateVersionDefinitionProperty where
  type PropertyType "Sheets" TemplateVersionDefinitionProperty = [SheetDefinitionProperty]
  set newValue TemplateVersionDefinitionProperty {..}
    = TemplateVersionDefinitionProperty
        {sheets = Prelude.pure newValue, ..}