module Stratosphere.CodePipeline.Pipeline.GitBranchFilterCriteriaProperty (
        GitBranchFilterCriteriaProperty(..),
        mkGitBranchFilterCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitBranchFilterCriteriaProperty
  = GitBranchFilterCriteriaProperty {excludes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     includes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitBranchFilterCriteriaProperty ::
  GitBranchFilterCriteriaProperty
mkGitBranchFilterCriteriaProperty
  = GitBranchFilterCriteriaProperty
      {excludes = Prelude.Nothing, includes = Prelude.Nothing}
instance ToResourceProperties GitBranchFilterCriteriaProperty where
  toResourceProperties GitBranchFilterCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitBranchFilterCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Excludes" Prelude.<$> excludes,
                            (JSON..=) "Includes" Prelude.<$> includes])}
instance JSON.ToJSON GitBranchFilterCriteriaProperty where
  toJSON GitBranchFilterCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Excludes" Prelude.<$> excludes,
               (JSON..=) "Includes" Prelude.<$> includes]))
instance Property "Excludes" GitBranchFilterCriteriaProperty where
  type PropertyType "Excludes" GitBranchFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitBranchFilterCriteriaProperty {..}
    = GitBranchFilterCriteriaProperty
        {excludes = Prelude.pure newValue, ..}
instance Property "Includes" GitBranchFilterCriteriaProperty where
  type PropertyType "Includes" GitBranchFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitBranchFilterCriteriaProperty {..}
    = GitBranchFilterCriteriaProperty
        {includes = Prelude.pure newValue, ..}