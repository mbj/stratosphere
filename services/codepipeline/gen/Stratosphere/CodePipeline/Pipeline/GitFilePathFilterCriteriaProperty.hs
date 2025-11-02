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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitfilepathfiltercriteria.html>
    GitFilePathFilterCriteriaProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitfilepathfiltercriteria.html#cfn-codepipeline-pipeline-gitfilepathfiltercriteria-excludes>
                                       excludes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitfilepathfiltercriteria.html#cfn-codepipeline-pipeline-gitfilepathfiltercriteria-includes>
                                       includes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitFilePathFilterCriteriaProperty ::
  GitFilePathFilterCriteriaProperty
mkGitFilePathFilterCriteriaProperty
  = GitFilePathFilterCriteriaProperty
      {haddock_workaround_ = (), excludes = Prelude.Nothing,
       includes = Prelude.Nothing}
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