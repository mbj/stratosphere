module Stratosphere.QuickSight.Template.TemplateVersionProperty (
        module Exports, TemplateVersionProperty(..),
        mkTemplateVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataSetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateErrorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html>
    TemplateVersionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-createdtime>
                             createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-datasetconfigurations>
                             dataSetConfigurations :: (Prelude.Maybe [DataSetConfigurationProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-errors>
                             errors :: (Prelude.Maybe [TemplateErrorProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-sheets>
                             sheets :: (Prelude.Maybe [SheetProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-sourceentityarn>
                             sourceEntityArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-status>
                             status :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-themearn>
                             themeArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templateversion.html#cfn-quicksight-template-templateversion-versionnumber>
                             versionNumber :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateVersionProperty :: TemplateVersionProperty
mkTemplateVersionProperty
  = TemplateVersionProperty
      {haddock_workaround_ = (), createdTime = Prelude.Nothing,
       dataSetConfigurations = Prelude.Nothing,
       description = Prelude.Nothing, errors = Prelude.Nothing,
       sheets = Prelude.Nothing, sourceEntityArn = Prelude.Nothing,
       status = Prelude.Nothing, themeArn = Prelude.Nothing,
       versionNumber = Prelude.Nothing}
instance ToResourceProperties TemplateVersionProperty where
  toResourceProperties TemplateVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "DataSetConfigurations"
                              Prelude.<$> dataSetConfigurations,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Errors" Prelude.<$> errors,
                            (JSON..=) "Sheets" Prelude.<$> sheets,
                            (JSON..=) "SourceEntityArn" Prelude.<$> sourceEntityArn,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                            (JSON..=) "VersionNumber" Prelude.<$> versionNumber])}
instance JSON.ToJSON TemplateVersionProperty where
  toJSON TemplateVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "DataSetConfigurations"
                 Prelude.<$> dataSetConfigurations,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Errors" Prelude.<$> errors,
               (JSON..=) "Sheets" Prelude.<$> sheets,
               (JSON..=) "SourceEntityArn" Prelude.<$> sourceEntityArn,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "ThemeArn" Prelude.<$> themeArn,
               (JSON..=) "VersionNumber" Prelude.<$> versionNumber]))
instance Property "CreatedTime" TemplateVersionProperty where
  type PropertyType "CreatedTime" TemplateVersionProperty = Value Prelude.Text
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {createdTime = Prelude.pure newValue, ..}
instance Property "DataSetConfigurations" TemplateVersionProperty where
  type PropertyType "DataSetConfigurations" TemplateVersionProperty = [DataSetConfigurationProperty]
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty
        {dataSetConfigurations = Prelude.pure newValue, ..}
instance Property "Description" TemplateVersionProperty where
  type PropertyType "Description" TemplateVersionProperty = Value Prelude.Text
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {description = Prelude.pure newValue, ..}
instance Property "Errors" TemplateVersionProperty where
  type PropertyType "Errors" TemplateVersionProperty = [TemplateErrorProperty]
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {errors = Prelude.pure newValue, ..}
instance Property "Sheets" TemplateVersionProperty where
  type PropertyType "Sheets" TemplateVersionProperty = [SheetProperty]
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {sheets = Prelude.pure newValue, ..}
instance Property "SourceEntityArn" TemplateVersionProperty where
  type PropertyType "SourceEntityArn" TemplateVersionProperty = Value Prelude.Text
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty
        {sourceEntityArn = Prelude.pure newValue, ..}
instance Property "Status" TemplateVersionProperty where
  type PropertyType "Status" TemplateVersionProperty = Value Prelude.Text
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {status = Prelude.pure newValue, ..}
instance Property "ThemeArn" TemplateVersionProperty where
  type PropertyType "ThemeArn" TemplateVersionProperty = Value Prelude.Text
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty {themeArn = Prelude.pure newValue, ..}
instance Property "VersionNumber" TemplateVersionProperty where
  type PropertyType "VersionNumber" TemplateVersionProperty = Value Prelude.Double
  set newValue TemplateVersionProperty {..}
    = TemplateVersionProperty
        {versionNumber = Prelude.pure newValue, ..}