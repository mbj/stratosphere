module Stratosphere.CodePipeline.Pipeline.GitFilePathFilterCriteriaProperty (
        GitFilePathFilterCriteriaProperty(..),
        mkGitFilePathFilterCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitFilePathFilterCriteriaProperty
  = GitFilePathFilterCriteriaProperty {excludes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       includes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitFilePathFilterCriteriaProperty ::
  GitFilePathFilterCriteriaProperty
mkGitFilePathFilterCriteriaProperty
  = GitFilePathFilterCriteriaProperty
      {excludes = Prelude.Nothing, includes = Prelude.Nothing}
instance ToResourceProperties GitFilePathFilterCriteriaProperty where
  toResourceProperties GitFilePathFilterCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitFilePathFilterCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Excludes" Prelude.<$> excludes,
                            (JSON..=) "Includes" Prelude.<$> includes])}
instance JSON.ToJSON GitFilePathFilterCriteriaProperty where
  toJSON GitFilePathFilterCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Excludes" Prelude.<$> excludes,
               (JSON..=) "Includes" Prelude.<$> includes]))
instance Property "Excludes" GitFilePathFilterCriteriaProperty where
  type PropertyType "Excludes" GitFilePathFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitFilePathFilterCriteriaProperty {..}
    = GitFilePathFilterCriteriaProperty
        {excludes = Prelude.pure newValue, ..}
instance Property "Includes" GitFilePathFilterCriteriaProperty where
  type PropertyType "Includes" GitFilePathFilterCriteriaProperty = ValueList Prelude.Text
  set newValue GitFilePathFilterCriteriaProperty {..}
    = GitFilePathFilterCriteriaProperty
        {includes = Prelude.pure newValue, ..}