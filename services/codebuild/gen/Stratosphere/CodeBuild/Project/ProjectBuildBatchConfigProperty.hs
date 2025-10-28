module Stratosphere.CodeBuild.Project.ProjectBuildBatchConfigProperty (
        module Exports, ProjectBuildBatchConfigProperty(..),
        mkProjectBuildBatchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.BatchRestrictionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectBuildBatchConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html>
    ProjectBuildBatchConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-batchreportmode>
                                     batchReportMode :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-combineartifacts>
                                     combineArtifacts :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-restrictions>
                                     restrictions :: (Prelude.Maybe BatchRestrictionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-servicerole>
                                     serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-timeoutinmins>
                                     timeoutInMins :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectBuildBatchConfigProperty ::
  ProjectBuildBatchConfigProperty
mkProjectBuildBatchConfigProperty
  = ProjectBuildBatchConfigProperty
      {haddock_workaround_ = (), batchReportMode = Prelude.Nothing,
       combineArtifacts = Prelude.Nothing, restrictions = Prelude.Nothing,
       serviceRole = Prelude.Nothing, timeoutInMins = Prelude.Nothing}
instance ToResourceProperties ProjectBuildBatchConfigProperty where
  toResourceProperties ProjectBuildBatchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectBuildBatchConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchReportMode" Prelude.<$> batchReportMode,
                            (JSON..=) "CombineArtifacts" Prelude.<$> combineArtifacts,
                            (JSON..=) "Restrictions" Prelude.<$> restrictions,
                            (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
                            (JSON..=) "TimeoutInMins" Prelude.<$> timeoutInMins])}
instance JSON.ToJSON ProjectBuildBatchConfigProperty where
  toJSON ProjectBuildBatchConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchReportMode" Prelude.<$> batchReportMode,
               (JSON..=) "CombineArtifacts" Prelude.<$> combineArtifacts,
               (JSON..=) "Restrictions" Prelude.<$> restrictions,
               (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
               (JSON..=) "TimeoutInMins" Prelude.<$> timeoutInMins]))
instance Property "BatchReportMode" ProjectBuildBatchConfigProperty where
  type PropertyType "BatchReportMode" ProjectBuildBatchConfigProperty = Value Prelude.Text
  set newValue ProjectBuildBatchConfigProperty {..}
    = ProjectBuildBatchConfigProperty
        {batchReportMode = Prelude.pure newValue, ..}
instance Property "CombineArtifacts" ProjectBuildBatchConfigProperty where
  type PropertyType "CombineArtifacts" ProjectBuildBatchConfigProperty = Value Prelude.Bool
  set newValue ProjectBuildBatchConfigProperty {..}
    = ProjectBuildBatchConfigProperty
        {combineArtifacts = Prelude.pure newValue, ..}
instance Property "Restrictions" ProjectBuildBatchConfigProperty where
  type PropertyType "Restrictions" ProjectBuildBatchConfigProperty = BatchRestrictionsProperty
  set newValue ProjectBuildBatchConfigProperty {..}
    = ProjectBuildBatchConfigProperty
        {restrictions = Prelude.pure newValue, ..}
instance Property "ServiceRole" ProjectBuildBatchConfigProperty where
  type PropertyType "ServiceRole" ProjectBuildBatchConfigProperty = Value Prelude.Text
  set newValue ProjectBuildBatchConfigProperty {..}
    = ProjectBuildBatchConfigProperty
        {serviceRole = Prelude.pure newValue, ..}
instance Property "TimeoutInMins" ProjectBuildBatchConfigProperty where
  type PropertyType "TimeoutInMins" ProjectBuildBatchConfigProperty = Value Prelude.Integer
  set newValue ProjectBuildBatchConfigProperty {..}
    = ProjectBuildBatchConfigProperty
        {timeoutInMins = Prelude.pure newValue, ..}