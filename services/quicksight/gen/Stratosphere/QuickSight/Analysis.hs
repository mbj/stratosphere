module Stratosphere.QuickSight.Analysis (
        module Exports, Analysis(..), mkAnalysis
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ResourcePermissionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Analysis
  = Analysis {analysisId :: (Value Prelude.Text),
              awsAccountId :: (Value Prelude.Text),
              definition :: (Prelude.Maybe AnalysisDefinitionProperty),
              name :: (Value Prelude.Text),
              parameters :: (Prelude.Maybe ParametersProperty),
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              sourceEntity :: (Prelude.Maybe AnalysisSourceEntityProperty),
              status :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag]),
              themeArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysis ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Analysis
mkAnalysis analysisId awsAccountId name
  = Analysis
      {analysisId = analysisId, awsAccountId = awsAccountId, name = name,
       definition = Prelude.Nothing, parameters = Prelude.Nothing,
       permissions = Prelude.Nothing, sourceEntity = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing,
       themeArn = Prelude.Nothing}
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
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThemeArn" Prelude.<$> themeArn]))}
instance JSON.ToJSON Analysis where
  toJSON Analysis {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnalysisId" JSON..= analysisId,
               "AwsAccountId" JSON..= awsAccountId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThemeArn" Prelude.<$> themeArn])))
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