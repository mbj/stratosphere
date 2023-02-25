module Stratosphere.QuickSight.Analysis (
        module Exports, Analysis(..), mkAnalysis
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisErrorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ResourcePermissionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Analysis
  = Analysis {analysisId :: (Value Prelude.Text),
              awsAccountId :: (Value Prelude.Text),
              errors :: (Prelude.Maybe [AnalysisErrorProperty]),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              parameters :: (Prelude.Maybe ParametersProperty),
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              sourceEntity :: AnalysisSourceEntityProperty,
              tags :: (Prelude.Maybe [Tag]),
              themeArn :: (Prelude.Maybe (Value Prelude.Text))}
mkAnalysis ::
  Value Prelude.Text
  -> Value Prelude.Text -> AnalysisSourceEntityProperty -> Analysis
mkAnalysis analysisId awsAccountId sourceEntity
  = Analysis
      {analysisId = analysisId, awsAccountId = awsAccountId,
       sourceEntity = sourceEntity, errors = Prelude.Nothing,
       name = Prelude.Nothing, parameters = Prelude.Nothing,
       permissions = Prelude.Nothing, tags = Prelude.Nothing,
       themeArn = Prelude.Nothing}
instance ToResourceProperties Analysis where
  toResourceProperties Analysis {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AnalysisId" JSON..= analysisId,
                            "AwsAccountId" JSON..= awsAccountId,
                            "SourceEntity" JSON..= sourceEntity]
                           (Prelude.catMaybes
                              [(JSON..=) "Errors" Prelude.<$> errors,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThemeArn" Prelude.<$> themeArn]))}
instance JSON.ToJSON Analysis where
  toJSON Analysis {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnalysisId" JSON..= analysisId,
               "AwsAccountId" JSON..= awsAccountId,
               "SourceEntity" JSON..= sourceEntity]
              (Prelude.catMaybes
                 [(JSON..=) "Errors" Prelude.<$> errors,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThemeArn" Prelude.<$> themeArn])))
instance Property "AnalysisId" Analysis where
  type PropertyType "AnalysisId" Analysis = Value Prelude.Text
  set newValue Analysis {..} = Analysis {analysisId = newValue, ..}
instance Property "AwsAccountId" Analysis where
  type PropertyType "AwsAccountId" Analysis = Value Prelude.Text
  set newValue Analysis {..} = Analysis {awsAccountId = newValue, ..}
instance Property "Errors" Analysis where
  type PropertyType "Errors" Analysis = [AnalysisErrorProperty]
  set newValue Analysis {..}
    = Analysis {errors = Prelude.pure newValue, ..}
instance Property "Name" Analysis where
  type PropertyType "Name" Analysis = Value Prelude.Text
  set newValue Analysis {..}
    = Analysis {name = Prelude.pure newValue, ..}
instance Property "Parameters" Analysis where
  type PropertyType "Parameters" Analysis = ParametersProperty
  set newValue Analysis {..}
    = Analysis {parameters = Prelude.pure newValue, ..}
instance Property "Permissions" Analysis where
  type PropertyType "Permissions" Analysis = [ResourcePermissionProperty]
  set newValue Analysis {..}
    = Analysis {permissions = Prelude.pure newValue, ..}
instance Property "SourceEntity" Analysis where
  type PropertyType "SourceEntity" Analysis = AnalysisSourceEntityProperty
  set newValue Analysis {..} = Analysis {sourceEntity = newValue, ..}
instance Property "Tags" Analysis where
  type PropertyType "Tags" Analysis = [Tag]
  set newValue Analysis {..}
    = Analysis {tags = Prelude.pure newValue, ..}
instance Property "ThemeArn" Analysis where
  type PropertyType "ThemeArn" Analysis = Value Prelude.Text
  set newValue Analysis {..}
    = Analysis {themeArn = Prelude.pure newValue, ..}