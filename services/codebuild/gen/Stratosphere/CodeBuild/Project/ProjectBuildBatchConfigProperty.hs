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
  = ProjectBuildBatchConfigProperty {batchReportMode :: (Prelude.Maybe (Value Prelude.Text)),
                                     combineArtifacts :: (Prelude.Maybe (Value Prelude.Bool)),
                                     restrictions :: (Prelude.Maybe BatchRestrictionsProperty),
                                     serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
                                     timeoutInMins :: (Prelude.Maybe (Value Prelude.Integer))}
mkProjectBuildBatchConfigProperty ::
  ProjectBuildBatchConfigProperty
mkProjectBuildBatchConfigProperty
  = ProjectBuildBatchConfigProperty
      {batchReportMode = Prelude.Nothing,
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