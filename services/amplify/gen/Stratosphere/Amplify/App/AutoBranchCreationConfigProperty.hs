module Stratosphere.Amplify.App.AutoBranchCreationConfigProperty (
        module Exports, AutoBranchCreationConfigProperty(..),
        mkAutoBranchCreationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.App.BasicAuthConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.EnvironmentVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoBranchCreationConfigProperty
  = AutoBranchCreationConfigProperty {autoBranchCreationPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      basicAuthConfig :: (Prelude.Maybe BasicAuthConfigProperty),
                                      buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
                                      enableAutoBranchCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                                      enableAutoBuild :: (Prelude.Maybe (Value Prelude.Bool)),
                                      enablePerformanceMode :: (Prelude.Maybe (Value Prelude.Bool)),
                                      enablePullRequestPreview :: (Prelude.Maybe (Value Prelude.Bool)),
                                      environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
                                      framework :: (Prelude.Maybe (Value Prelude.Text)),
                                      pullRequestEnvironmentName :: (Prelude.Maybe (Value Prelude.Text)),
                                      stage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoBranchCreationConfigProperty ::
  AutoBranchCreationConfigProperty
mkAutoBranchCreationConfigProperty
  = AutoBranchCreationConfigProperty
      {autoBranchCreationPatterns = Prelude.Nothing,
       basicAuthConfig = Prelude.Nothing, buildSpec = Prelude.Nothing,
       enableAutoBranchCreation = Prelude.Nothing,
       enableAutoBuild = Prelude.Nothing,
       enablePerformanceMode = Prelude.Nothing,
       enablePullRequestPreview = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       framework = Prelude.Nothing,
       pullRequestEnvironmentName = Prelude.Nothing,
       stage = Prelude.Nothing}
instance ToResourceProperties AutoBranchCreationConfigProperty where
  toResourceProperties AutoBranchCreationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.AutoBranchCreationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoBranchCreationPatterns"
                              Prelude.<$> autoBranchCreationPatterns,
                            (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
                            (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                            (JSON..=) "EnableAutoBranchCreation"
                              Prelude.<$> enableAutoBranchCreation,
                            (JSON..=) "EnableAutoBuild" Prelude.<$> enableAutoBuild,
                            (JSON..=) "EnablePerformanceMode"
                              Prelude.<$> enablePerformanceMode,
                            (JSON..=) "EnablePullRequestPreview"
                              Prelude.<$> enablePullRequestPreview,
                            (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                            (JSON..=) "Framework" Prelude.<$> framework,
                            (JSON..=) "PullRequestEnvironmentName"
                              Prelude.<$> pullRequestEnvironmentName,
                            (JSON..=) "Stage" Prelude.<$> stage])}
instance JSON.ToJSON AutoBranchCreationConfigProperty where
  toJSON AutoBranchCreationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoBranchCreationPatterns"
                 Prelude.<$> autoBranchCreationPatterns,
               (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
               (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
               (JSON..=) "EnableAutoBranchCreation"
                 Prelude.<$> enableAutoBranchCreation,
               (JSON..=) "EnableAutoBuild" Prelude.<$> enableAutoBuild,
               (JSON..=) "EnablePerformanceMode"
                 Prelude.<$> enablePerformanceMode,
               (JSON..=) "EnablePullRequestPreview"
                 Prelude.<$> enablePullRequestPreview,
               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
               (JSON..=) "Framework" Prelude.<$> framework,
               (JSON..=) "PullRequestEnvironmentName"
                 Prelude.<$> pullRequestEnvironmentName,
               (JSON..=) "Stage" Prelude.<$> stage]))
instance Property "AutoBranchCreationPatterns" AutoBranchCreationConfigProperty where
  type PropertyType "AutoBranchCreationPatterns" AutoBranchCreationConfigProperty = ValueList Prelude.Text
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {autoBranchCreationPatterns = Prelude.pure newValue, ..}
instance Property "BasicAuthConfig" AutoBranchCreationConfigProperty where
  type PropertyType "BasicAuthConfig" AutoBranchCreationConfigProperty = BasicAuthConfigProperty
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {basicAuthConfig = Prelude.pure newValue, ..}
instance Property "BuildSpec" AutoBranchCreationConfigProperty where
  type PropertyType "BuildSpec" AutoBranchCreationConfigProperty = Value Prelude.Text
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {buildSpec = Prelude.pure newValue, ..}
instance Property "EnableAutoBranchCreation" AutoBranchCreationConfigProperty where
  type PropertyType "EnableAutoBranchCreation" AutoBranchCreationConfigProperty = Value Prelude.Bool
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {enableAutoBranchCreation = Prelude.pure newValue, ..}
instance Property "EnableAutoBuild" AutoBranchCreationConfigProperty where
  type PropertyType "EnableAutoBuild" AutoBranchCreationConfigProperty = Value Prelude.Bool
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {enableAutoBuild = Prelude.pure newValue, ..}
instance Property "EnablePerformanceMode" AutoBranchCreationConfigProperty where
  type PropertyType "EnablePerformanceMode" AutoBranchCreationConfigProperty = Value Prelude.Bool
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {enablePerformanceMode = Prelude.pure newValue, ..}
instance Property "EnablePullRequestPreview" AutoBranchCreationConfigProperty where
  type PropertyType "EnablePullRequestPreview" AutoBranchCreationConfigProperty = Value Prelude.Bool
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {enablePullRequestPreview = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" AutoBranchCreationConfigProperty where
  type PropertyType "EnvironmentVariables" AutoBranchCreationConfigProperty = [EnvironmentVariableProperty]
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {environmentVariables = Prelude.pure newValue, ..}
instance Property "Framework" AutoBranchCreationConfigProperty where
  type PropertyType "Framework" AutoBranchCreationConfigProperty = Value Prelude.Text
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {framework = Prelude.pure newValue, ..}
instance Property "PullRequestEnvironmentName" AutoBranchCreationConfigProperty where
  type PropertyType "PullRequestEnvironmentName" AutoBranchCreationConfigProperty = Value Prelude.Text
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {pullRequestEnvironmentName = Prelude.pure newValue, ..}
instance Property "Stage" AutoBranchCreationConfigProperty where
  type PropertyType "Stage" AutoBranchCreationConfigProperty = Value Prelude.Text
  set newValue AutoBranchCreationConfigProperty {..}
    = AutoBranchCreationConfigProperty
        {stage = Prelude.pure newValue, ..}