module Stratosphere.CodeBuild.Project.ProjectTriggersProperty (
        module Exports, ProjectTriggersProperty(..),
        mkProjectTriggersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.FilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectTriggersProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html>
    ProjectTriggersProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-buildtype>
                             buildType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-filtergroups>
                             filterGroups :: (Prelude.Maybe [FilterGroupProperty]),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-scopeconfiguration>
                             scopeConfiguration :: (Prelude.Maybe ScopeConfigurationProperty),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook>
                             webhook :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectTriggersProperty :: ProjectTriggersProperty
mkProjectTriggersProperty
  = ProjectTriggersProperty
      {buildType = Prelude.Nothing, filterGroups = Prelude.Nothing,
       scopeConfiguration = Prelude.Nothing, webhook = Prelude.Nothing}
instance ToResourceProperties ProjectTriggersProperty where
  toResourceProperties ProjectTriggersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectTriggers",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BuildType" Prelude.<$> buildType,
                            (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
                            (JSON..=) "ScopeConfiguration" Prelude.<$> scopeConfiguration,
                            (JSON..=) "Webhook" Prelude.<$> webhook])}
instance JSON.ToJSON ProjectTriggersProperty where
  toJSON ProjectTriggersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BuildType" Prelude.<$> buildType,
               (JSON..=) "FilterGroups" Prelude.<$> filterGroups,
               (JSON..=) "ScopeConfiguration" Prelude.<$> scopeConfiguration,
               (JSON..=) "Webhook" Prelude.<$> webhook]))
instance Property "BuildType" ProjectTriggersProperty where
  type PropertyType "BuildType" ProjectTriggersProperty = Value Prelude.Text
  set newValue ProjectTriggersProperty {..}
    = ProjectTriggersProperty {buildType = Prelude.pure newValue, ..}
instance Property "FilterGroups" ProjectTriggersProperty where
  type PropertyType "FilterGroups" ProjectTriggersProperty = [FilterGroupProperty]
  set newValue ProjectTriggersProperty {..}
    = ProjectTriggersProperty
        {filterGroups = Prelude.pure newValue, ..}
instance Property "ScopeConfiguration" ProjectTriggersProperty where
  type PropertyType "ScopeConfiguration" ProjectTriggersProperty = ScopeConfigurationProperty
  set newValue ProjectTriggersProperty {..}
    = ProjectTriggersProperty
        {scopeConfiguration = Prelude.pure newValue, ..}
instance Property "Webhook" ProjectTriggersProperty where
  type PropertyType "Webhook" ProjectTriggersProperty = Value Prelude.Bool
  set newValue ProjectTriggersProperty {..}
    = ProjectTriggersProperty {webhook = Prelude.pure newValue, ..}