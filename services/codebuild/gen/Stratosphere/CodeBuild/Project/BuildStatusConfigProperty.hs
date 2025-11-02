module Stratosphere.CodeBuild.Project.BuildStatusConfigProperty (
        BuildStatusConfigProperty(..), mkBuildStatusConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BuildStatusConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html>
    BuildStatusConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-context>
                               context :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-targeturl>
                               targetUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBuildStatusConfigProperty :: BuildStatusConfigProperty
mkBuildStatusConfigProperty
  = BuildStatusConfigProperty
      {haddock_workaround_ = (), context = Prelude.Nothing,
       targetUrl = Prelude.Nothing}
instance ToResourceProperties BuildStatusConfigProperty where
  toResourceProperties BuildStatusConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.BuildStatusConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Context" Prelude.<$> context,
                            (JSON..=) "TargetUrl" Prelude.<$> targetUrl])}
instance JSON.ToJSON BuildStatusConfigProperty where
  toJSON BuildStatusConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Context" Prelude.<$> context,
               (JSON..=) "TargetUrl" Prelude.<$> targetUrl]))
instance Property "Context" BuildStatusConfigProperty where
  type PropertyType "Context" BuildStatusConfigProperty = Value Prelude.Text
  set newValue BuildStatusConfigProperty {..}
    = BuildStatusConfigProperty {context = Prelude.pure newValue, ..}
instance Property "TargetUrl" BuildStatusConfigProperty where
  type PropertyType "TargetUrl" BuildStatusConfigProperty = Value Prelude.Text
  set newValue BuildStatusConfigProperty {..}
    = BuildStatusConfigProperty {targetUrl = Prelude.pure newValue, ..}