module Stratosphere.CodePipeline.Pipeline.GitPushFilterProperty (
        module Exports, GitPushFilterProperty(..), mkGitPushFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitBranchFilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitFilePathFilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitTagFilterCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data GitPushFilterProperty
  = GitPushFilterProperty {branches :: (Prelude.Maybe GitBranchFilterCriteriaProperty),
                           filePaths :: (Prelude.Maybe GitFilePathFilterCriteriaProperty),
                           tags :: (Prelude.Maybe GitTagFilterCriteriaProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitPushFilterProperty :: GitPushFilterProperty
mkGitPushFilterProperty
  = GitPushFilterProperty
      {branches = Prelude.Nothing, filePaths = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties GitPushFilterProperty where
  toResourceProperties GitPushFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.GitPushFilter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Branches" Prelude.<$> branches,
                            (JSON..=) "FilePaths" Prelude.<$> filePaths,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON GitPushFilterProperty where
  toJSON GitPushFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Branches" Prelude.<$> branches,
               (JSON..=) "FilePaths" Prelude.<$> filePaths,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Branches" GitPushFilterProperty where
  type PropertyType "Branches" GitPushFilterProperty = GitBranchFilterCriteriaProperty
  set newValue GitPushFilterProperty {..}
    = GitPushFilterProperty {branches = Prelude.pure newValue, ..}
instance Property "FilePaths" GitPushFilterProperty where
  type PropertyType "FilePaths" GitPushFilterProperty = GitFilePathFilterCriteriaProperty
  set newValue GitPushFilterProperty {..}
    = GitPushFilterProperty {filePaths = Prelude.pure newValue, ..}
instance Property "Tags" GitPushFilterProperty where
  type PropertyType "Tags" GitPushFilterProperty = GitTagFilterCriteriaProperty
  set newValue GitPushFilterProperty {..}
    = GitPushFilterProperty {tags = Prelude.pure newValue, ..}