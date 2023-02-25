module Stratosphere.CodeBuild.Project.BuildStatusConfigProperty (
        BuildStatusConfigProperty(..), mkBuildStatusConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BuildStatusConfigProperty
  = BuildStatusConfigProperty {context :: (Prelude.Maybe (Value Prelude.Text)),
                               targetUrl :: (Prelude.Maybe (Value Prelude.Text))}
mkBuildStatusConfigProperty :: BuildStatusConfigProperty
mkBuildStatusConfigProperty
  = BuildStatusConfigProperty
      {context = Prelude.Nothing, targetUrl = Prelude.Nothing}
instance ToResourceProperties BuildStatusConfigProperty where
  toResourceProperties BuildStatusConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.BuildStatusConfig",
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