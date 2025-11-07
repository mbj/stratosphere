module Stratosphere.QuickSight.Analysis (
        module Exports, Analysis(..), mkAnalysis
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisErrorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ValidationStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Analysis
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html>
    Analysis {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-analysisid>
              analysisId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-awsaccountid>
              awsAccountId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-definition>
              definition :: (Prelude.Maybe AnalysisDefinitionProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-errors>
              errors :: (Prelude.Maybe [AnalysisErrorProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-folderarns>
              folderArns :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-parameters>
              parameters :: (Prelude.Maybe ParametersProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-permissions>
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-sheets>
              sheets :: (Prelude.Maybe [SheetProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-sourceentity>
              sourceEntity :: (Prelude.Maybe AnalysisSourceEntityProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-status>
              status :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-themearn>
              themeArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-analysis.html#cfn-quicksight-analysis-validationstrategy>
              validationStrategy :: (Prelude.Maybe ValidationStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysis ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Analysis
mkAnalysis analysisId awsAccountId name
  = Analysis
      {haddock_workaround_ = (), analysisId = analysisId,
       awsAccountId = awsAccountId, name = name,
       definition = Prelude.Nothing, errors = Prelude.Nothing,
       folderArns = Prelude.Nothing, parameters = Prelude.Nothing,
       permissions = Prelude.Nothing, sheets = Prelude.Nothing,
       sourceEntity = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing, themeArn = Prelude.Nothing,
       validationStrategy = Prelude.Nothing}
instance ToResourceProperties Analysis where
  toResourceProperties Analysis {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AnalysisId" JSON..= analysisId,
                            "AwsAccountId" JSON..= awsAccountId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "Errors" Prelude.<$> errors,
                               (JSON..=) "FolderArns" Prelude.<$> folderArns,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "Sheets" Prelude.<$> sheets,
                               (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                               (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy]))}
instance JSON.ToJSON Analysis where
  toJSON Analysis {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnalysisId" JSON..= analysisId,
               "AwsAccountId" JSON..= awsAccountId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "Errors" Prelude.<$> errors,
                  (JSON..=) "FolderArns" Prelude.<$> folderArns,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "Sheets" Prelude.<$> sheets,
                  (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                  (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy])))
instance Property "AnalysisId" Analysis where
  type PropertyType "AnalysisId" Analysis = Value Prelude.Text
  set newValue Analysis {..} = Analysis {analysisId = newValue, ..}
instance Property "AwsAccountId" Analysis where
  type PropertyType "AwsAccountId" Analysis = Value Prelude.Text
  set newValue Analysis {..} = Analysis {awsAccountId = newValue, ..}
instance Property "Definition" Analysis where
  type PropertyType "Definition" Analysis = AnalysisDefinitionProperty
  set newValue Analysis {..}
    = Analysis {definition = Prelude.pure newValue, ..}
instance Property "Errors" Analysis where
  type PropertyType "Errors" Analysis = [AnalysisErrorProperty]
  set newValue Analysis {..}
    = Analysis {errors = Prelude.pure newValue, ..}
instance Property "FolderArns" Analysis where
  type PropertyType "FolderArns" Analysis = ValueList Prelude.Text
  set newValue Analysis {..}
    = Analysis {folderArns = Prelude.pure newValue, ..}
instance Property "Name" Analysis where
  type PropertyType "Name" Analysis = Value Prelude.Text
  set newValue Analysis {..} = Analysis {name = newValue, ..}
instance Property "Parameters" Analysis where
  type PropertyType "Parameters" Analysis = ParametersProperty
  set newValue Analysis {..}
    = Analysis {parameters = Prelude.pure newValue, ..}
instance Property "Permissions" Analysis where
  type PropertyType "Permissions" Analysis = [ResourcePermissionProperty]
  set newValue Analysis {..}
    = Analysis {permissions = Prelude.pure newValue, ..}
instance Property "Sheets" Analysis where
  type PropertyType "Sheets" Analysis = [SheetProperty]
  set newValue Analysis {..}
    = Analysis {sheets = Prelude.pure newValue, ..}
instance Property "SourceEntity" Analysis where
  type PropertyType "SourceEntity" Analysis = AnalysisSourceEntityProperty
  set newValue Analysis {..}
    = Analysis {sourceEntity = Prelude.pure newValue, ..}
instance Property "Status" Analysis where
  type PropertyType "Status" Analysis = Value Prelude.Text
  set newValue Analysis {..}
    = Analysis {status = Prelude.pure newValue, ..}
instance Property "Tags" Analysis where
  type PropertyType "Tags" Analysis = [Tag]
  set newValue Analysis {..}
    = Analysis {tags = Prelude.pure newValue, ..}
instance Property "ThemeArn" Analysis where
  type PropertyType "ThemeArn" Analysis = Value Prelude.Text
  set newValue Analysis {..}
    = Analysis {themeArn = Prelude.pure newValue, ..}
instance Property "ValidationStrategy" Analysis where
  type PropertyType "ValidationStrategy" Analysis = ValidationStrategyProperty
  set newValue Analysis {..}
    = Analysis {validationStrategy = Prelude.pure newValue, ..}