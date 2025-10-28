module Stratosphere.Amplify.Branch (
        module Exports, Branch(..), mkBranch
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.Branch.BackendProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.Branch.BasicAuthConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.Branch.EnvironmentVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Branch
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html>
    Branch {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-appid>
            appId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-backend>
            backend :: (Prelude.Maybe BackendProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-basicauthconfig>
            basicAuthConfig :: (Prelude.Maybe BasicAuthConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-branchname>
            branchName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-buildspec>
            buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-enableautobuild>
            enableAutoBuild :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-enableperformancemode>
            enablePerformanceMode :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-enablepullrequestpreview>
            enablePullRequestPreview :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-environmentvariables>
            environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-framework>
            framework :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-pullrequestenvironmentname>
            pullRequestEnvironmentName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-stage>
            stage :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBranch :: Value Prelude.Text -> Value Prelude.Text -> Branch
mkBranch appId branchName
  = Branch
      {haddock_workaround_ = (), appId = appId, branchName = branchName,
       backend = Prelude.Nothing, basicAuthConfig = Prelude.Nothing,
       buildSpec = Prelude.Nothing, description = Prelude.Nothing,
       enableAutoBuild = Prelude.Nothing,
       enablePerformanceMode = Prelude.Nothing,
       enablePullRequestPreview = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       framework = Prelude.Nothing,
       pullRequestEnvironmentName = Prelude.Nothing,
       stage = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Branch where
  toResourceProperties Branch {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Branch", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppId" JSON..= appId, "BranchName" JSON..= branchName]
                           (Prelude.catMaybes
                              [(JSON..=) "Backend" Prelude.<$> backend,
                               (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
                               (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableAutoBuild" Prelude.<$> enableAutoBuild,
                               (JSON..=) "EnablePerformanceMode"
                                 Prelude.<$> enablePerformanceMode,
                               (JSON..=) "EnablePullRequestPreview"
                                 Prelude.<$> enablePullRequestPreview,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "Framework" Prelude.<$> framework,
                               (JSON..=) "PullRequestEnvironmentName"
                                 Prelude.<$> pullRequestEnvironmentName,
                               (JSON..=) "Stage" Prelude.<$> stage,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Branch where
  toJSON Branch {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppId" JSON..= appId, "BranchName" JSON..= branchName]
              (Prelude.catMaybes
                 [(JSON..=) "Backend" Prelude.<$> backend,
                  (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
                  (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableAutoBuild" Prelude.<$> enableAutoBuild,
                  (JSON..=) "EnablePerformanceMode"
                    Prelude.<$> enablePerformanceMode,
                  (JSON..=) "EnablePullRequestPreview"
                    Prelude.<$> enablePullRequestPreview,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "Framework" Prelude.<$> framework,
                  (JSON..=) "PullRequestEnvironmentName"
                    Prelude.<$> pullRequestEnvironmentName,
                  (JSON..=) "Stage" Prelude.<$> stage,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppId" Branch where
  type PropertyType "AppId" Branch = Value Prelude.Text
  set newValue Branch {..} = Branch {appId = newValue, ..}
instance Property "Backend" Branch where
  type PropertyType "Backend" Branch = BackendProperty
  set newValue Branch {..}
    = Branch {backend = Prelude.pure newValue, ..}
instance Property "BasicAuthConfig" Branch where
  type PropertyType "BasicAuthConfig" Branch = BasicAuthConfigProperty
  set newValue Branch {..}
    = Branch {basicAuthConfig = Prelude.pure newValue, ..}
instance Property "BranchName" Branch where
  type PropertyType "BranchName" Branch = Value Prelude.Text
  set newValue Branch {..} = Branch {branchName = newValue, ..}
instance Property "BuildSpec" Branch where
  type PropertyType "BuildSpec" Branch = Value Prelude.Text
  set newValue Branch {..}
    = Branch {buildSpec = Prelude.pure newValue, ..}
instance Property "Description" Branch where
  type PropertyType "Description" Branch = Value Prelude.Text
  set newValue Branch {..}
    = Branch {description = Prelude.pure newValue, ..}
instance Property "EnableAutoBuild" Branch where
  type PropertyType "EnableAutoBuild" Branch = Value Prelude.Bool
  set newValue Branch {..}
    = Branch {enableAutoBuild = Prelude.pure newValue, ..}
instance Property "EnablePerformanceMode" Branch where
  type PropertyType "EnablePerformanceMode" Branch = Value Prelude.Bool
  set newValue Branch {..}
    = Branch {enablePerformanceMode = Prelude.pure newValue, ..}
instance Property "EnablePullRequestPreview" Branch where
  type PropertyType "EnablePullRequestPreview" Branch = Value Prelude.Bool
  set newValue Branch {..}
    = Branch {enablePullRequestPreview = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" Branch where
  type PropertyType "EnvironmentVariables" Branch = [EnvironmentVariableProperty]
  set newValue Branch {..}
    = Branch {environmentVariables = Prelude.pure newValue, ..}
instance Property "Framework" Branch where
  type PropertyType "Framework" Branch = Value Prelude.Text
  set newValue Branch {..}
    = Branch {framework = Prelude.pure newValue, ..}
instance Property "PullRequestEnvironmentName" Branch where
  type PropertyType "PullRequestEnvironmentName" Branch = Value Prelude.Text
  set newValue Branch {..}
    = Branch {pullRequestEnvironmentName = Prelude.pure newValue, ..}
instance Property "Stage" Branch where
  type PropertyType "Stage" Branch = Value Prelude.Text
  set newValue Branch {..}
    = Branch {stage = Prelude.pure newValue, ..}
instance Property "Tags" Branch where
  type PropertyType "Tags" Branch = [Tag]
  set newValue Branch {..}
    = Branch {tags = Prelude.pure newValue, ..}