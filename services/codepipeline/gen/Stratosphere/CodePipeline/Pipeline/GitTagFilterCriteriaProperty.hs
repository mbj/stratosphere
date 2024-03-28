module Stratosphere.CodePipeline.Pipeline.GitTagFilterCriteriaProperty (
        GitTagFilterCriteriaProperty(..), mkGitTagFilterCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitTagFilterCriteriaProperty
  = GitTagFilterCriteriaProperty {excludes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  includes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitTagFilterCriteriaProperty :: GitTagFilterCriteriaProperty
mkGitTagFilterCriteriaProperty
  = GitTagFilterCriteriaProperty
      {excludes = Prelude.Nothing, includes = Prelude.Nothing}
instance ToResourceProperties GitTagFilterCriteriaProperty where
  toResourceProperties GitTagFilterCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitTagFilterCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Excludes" Prelude.<$> excludes,
                            (JSON..=) "Includes" Prelude.<$> includes])}
instance JSON.ToJSON GitTagFilterCriteriaProperty where
  toJSON GitTagFilterCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Excludes" Prelude.<$> excludes,
               (JSON..=) "Includes" Prelude.<$> includes]))
instance Property "Excludes" GitTagFilterCriteriaProperty where
  type PropertyType "Excludes" GitTagFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitTagFilterCriteriaProperty {..}
    = GitTagFilterCriteriaProperty
        {excludes = Prelude.pure newValue, ..}
instance Property "Includes" GitTagFilterCriteriaProperty where
  type PropertyType "Includes" GitTagFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitTagFilterCriteriaProperty {..}
    = GitTagFilterCriteriaProperty
        {includes = Prelude.pure newValue, ..}