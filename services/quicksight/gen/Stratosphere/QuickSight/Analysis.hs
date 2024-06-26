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
  = Analysis {analysisId :: (Value Prelude.Text),
              awsAccountId :: (Value Prelude.Text),
              definition :: (Prelude.Maybe AnalysisDefinitionProperty),
              errors :: (Prelude.Maybe [AnalysisErrorProperty]),
              name :: (Value Prelude.Text),
              parameters :: (Prelude.Maybe ParametersProperty),
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              sheets :: (Prelude.Maybe [SheetProperty]),
              sourceEntity :: (Prelude.Maybe AnalysisSourceEntityProperty),
              status :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag]),
              themeArn :: (Prelude.Maybe (Value Prelude.Text)),
              validationStrategy :: (Prelude.Maybe ValidationStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysis ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Analysis
mkAnalysis analysisId awsAccountId name
  = Analysis
      {analysisId = analysisId, awsAccountId = awsAccountId, name = name,
       definition = Prelude.Nothing, errors = Prelude.Nothing,
       parameters = Prelude.Nothing, permissions = Prelude.Nothing,
       sheets = Prelude.Nothing, sourceEntity = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing,
       themeArn = Prelude.Nothing, validationStrategy = Prelude.Nothing}
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