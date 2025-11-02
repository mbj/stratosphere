module Stratosphere.CodePipeline.Pipeline.GitPullRequestFilterProperty (
        module Exports, GitPullRequestFilterProperty(..),
        mkGitPullRequestFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitBranchFilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitFilePathFilterCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitPullRequestFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html>
    GitPullRequestFilterProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-branches>
                                  branches :: (Prelude.Maybe GitBranchFilterCriteriaProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-events>
                                  events :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-filepaths>
                                  filePaths :: (Prelude.Maybe GitFilePathFilterCriteriaProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitPullRequestFilterProperty :: GitPullRequestFilterProperty
mkGitPullRequestFilterProperty
  = GitPullRequestFilterProperty
      {haddock_workaround_ = (), branches = Prelude.Nothing,
       events = Prelude.Nothing, filePaths = Prelude.Nothing}
instance ToResourceProperties GitPullRequestFilterProperty where
  toResourceProperties GitPullRequestFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitPullRequestFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Branches" Prelude.<$> branches,
                            (JSON..=) "Events" Prelude.<$> events,
                            (JSON..=) "FilePaths" Prelude.<$> filePaths])}
instance JSON.ToJSON GitPullRequestFilterProperty where
  toJSON GitPullRequestFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Branches" Prelude.<$> branches,
               (JSON..=) "Events" Prelude.<$> events,
               (JSON..=) "FilePaths" Prelude.<$> filePaths]))
instance Property "Branches" GitPullRequestFilterProperty where
  type PropertyType "Branches" GitPullRequestFilterProperty = GitBranchFilterCriteriaProperty
  set newValue GitPullRequestFilterProperty {..}
    = GitPullRequestFilterProperty
        {branches = Prelude.pure newValue, ..}
instance Property "Events" GitPullRequestFilterProperty where
  type PropertyType "Events" GitPullRequestFilterProperty = ValueList Prelude.Text
  set newValue GitPullRequestFilterProperty {..}
    = GitPullRequestFilterProperty {events = Prelude.pure newValue, ..}
instance Property "FilePaths" GitPullRequestFilterProperty where
  type PropertyType "FilePaths" GitPullRequestFilterProperty = GitFilePathFilterCriteriaProperty
  set newValue GitPullRequestFilterProperty {..}
    = GitPullRequestFilterProperty
        {filePaths = Prelude.pure newValue, ..}