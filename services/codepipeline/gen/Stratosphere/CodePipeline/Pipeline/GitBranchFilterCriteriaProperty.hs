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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitbranchfiltercriteria.html>
    GitBranchFilterCriteriaProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitbranchfiltercriteria.html#cfn-codepipeline-pipeline-gitbranchfiltercriteria-excludes>
                                     excludes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitbranchfiltercriteria.html#cfn-codepipeline-pipeline-gitbranchfiltercriteria-includes>
                                     includes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitBranchFilterCriteriaProperty ::
  GitBranchFilterCriteriaProperty
mkGitBranchFilterCriteriaProperty
  = GitBranchFilterCriteriaProperty
      {haddock_workaround_ = (), excludes = Prelude.Nothing,
       includes = Prelude.Nothing}
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