module Stratosphere.CodePipeline.Pipeline.GitConfigurationProperty (
        module Exports, GitConfigurationProperty(..),
        mkGitConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitPullRequestFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitPushFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitConfigurationProperty
  = GitConfigurationProperty {pullRequest :: (Prelude.Maybe [GitPullRequestFilterProperty]),
                              push :: (Prelude.Maybe [GitPushFilterProperty]),
                              sourceActionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitConfigurationProperty ::
  Value Prelude.Text -> GitConfigurationProperty
mkGitConfigurationProperty sourceActionName
  = GitConfigurationProperty
      {sourceActionName = sourceActionName,
       pullRequest = Prelude.Nothing, push = Prelude.Nothing}
instance ToResourceProperties GitConfigurationProperty where
  toResourceProperties GitConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceActionName" JSON..= sourceActionName]
                           (Prelude.catMaybes
                              [(JSON..=) "PullRequest" Prelude.<$> pullRequest,
                               (JSON..=) "Push" Prelude.<$> push]))}
instance JSON.ToJSON GitConfigurationProperty where
  toJSON GitConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceActionName" JSON..= sourceActionName]
              (Prelude.catMaybes
                 [(JSON..=) "PullRequest" Prelude.<$> pullRequest,
                  (JSON..=) "Push" Prelude.<$> push])))
instance Property "PullRequest" GitConfigurationProperty where
  type PropertyType "PullRequest" GitConfigurationProperty = [GitPullRequestFilterProperty]
  set newValue GitConfigurationProperty {..}
    = GitConfigurationProperty
        {pullRequest = Prelude.pure newValue, ..}
instance Property "Push" GitConfigurationProperty where
  type PropertyType "Push" GitConfigurationProperty = [GitPushFilterProperty]
  set newValue GitConfigurationProperty {..}
    = GitConfigurationProperty {push = Prelude.pure newValue, ..}
instance Property "SourceActionName" GitConfigurationProperty where
  type PropertyType "SourceActionName" GitConfigurationProperty = Value Prelude.Text
  set newValue GitConfigurationProperty {..}
    = GitConfigurationProperty {sourceActionName = newValue, ..}