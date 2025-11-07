module Stratosphere.Amplify.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.App.AutoBranchCreationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.BasicAuthConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.CacheConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.CustomRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.EnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.JobConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data App
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html>
    App {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-accesstoken>
         accessToken :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-autobranchcreationconfig>
         autoBranchCreationConfig :: (Prelude.Maybe AutoBranchCreationConfigProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-basicauthconfig>
         basicAuthConfig :: (Prelude.Maybe BasicAuthConfigProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-buildspec>
         buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-cacheconfig>
         cacheConfig :: (Prelude.Maybe CacheConfigProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-computerolearn>
         computeRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-customheaders>
         customHeaders :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-customrules>
         customRules :: (Prelude.Maybe [CustomRuleProperty]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-description>
         description :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-enablebranchautodeletion>
         enableBranchAutoDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-environmentvariables>
         environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-iamservicerole>
         iAMServiceRole :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-jobconfig>
         jobConfig :: (Prelude.Maybe JobConfigProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-name>
         name :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-oauthtoken>
         oauthToken :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-platform>
         platform :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-repository>
         repository :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-tags>
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApp :: Value Prelude.Text -> App
mkApp name
  = App
      {haddock_workaround_ = (), name = name,
       accessToken = Prelude.Nothing,
       autoBranchCreationConfig = Prelude.Nothing,
       basicAuthConfig = Prelude.Nothing, buildSpec = Prelude.Nothing,
       cacheConfig = Prelude.Nothing, computeRoleArn = Prelude.Nothing,
       customHeaders = Prelude.Nothing, customRules = Prelude.Nothing,
       description = Prelude.Nothing,
       enableBranchAutoDeletion = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       iAMServiceRole = Prelude.Nothing, jobConfig = Prelude.Nothing,
       oauthToken = Prelude.Nothing, platform = Prelude.Nothing,
       repository = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "AutoBranchCreationConfig"
                                 Prelude.<$> autoBranchCreationConfig,
                               (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
                               (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                               (JSON..=) "CacheConfig" Prelude.<$> cacheConfig,
                               (JSON..=) "ComputeRoleArn" Prelude.<$> computeRoleArn,
                               (JSON..=) "CustomHeaders" Prelude.<$> customHeaders,
                               (JSON..=) "CustomRules" Prelude.<$> customRules,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableBranchAutoDeletion"
                                 Prelude.<$> enableBranchAutoDeletion,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "IAMServiceRole" Prelude.<$> iAMServiceRole,
                               (JSON..=) "JobConfig" Prelude.<$> jobConfig,
                               (JSON..=) "OauthToken" Prelude.<$> oauthToken,
                               (JSON..=) "Platform" Prelude.<$> platform,
                               (JSON..=) "Repository" Prelude.<$> repository,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON App where
  toJSON App {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "AutoBranchCreationConfig"
                    Prelude.<$> autoBranchCreationConfig,
                  (JSON..=) "BasicAuthConfig" Prelude.<$> basicAuthConfig,
                  (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                  (JSON..=) "CacheConfig" Prelude.<$> cacheConfig,
                  (JSON..=) "ComputeRoleArn" Prelude.<$> computeRoleArn,
                  (JSON..=) "CustomHeaders" Prelude.<$> customHeaders,
                  (JSON..=) "CustomRules" Prelude.<$> customRules,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableBranchAutoDeletion"
                    Prelude.<$> enableBranchAutoDeletion,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "IAMServiceRole" Prelude.<$> iAMServiceRole,
                  (JSON..=) "JobConfig" Prelude.<$> jobConfig,
                  (JSON..=) "OauthToken" Prelude.<$> oauthToken,
                  (JSON..=) "Platform" Prelude.<$> platform,
                  (JSON..=) "Repository" Prelude.<$> repository,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessToken" App where
  type PropertyType "AccessToken" App = Value Prelude.Text
  set newValue App {..}
    = App {accessToken = Prelude.pure newValue, ..}
instance Property "AutoBranchCreationConfig" App where
  type PropertyType "AutoBranchCreationConfig" App = AutoBranchCreationConfigProperty
  set newValue App {..}
    = App {autoBranchCreationConfig = Prelude.pure newValue, ..}
instance Property "BasicAuthConfig" App where
  type PropertyType "BasicAuthConfig" App = BasicAuthConfigProperty
  set newValue App {..}
    = App {basicAuthConfig = Prelude.pure newValue, ..}
instance Property "BuildSpec" App where
  type PropertyType "BuildSpec" App = Value Prelude.Text
  set newValue App {..} = App {buildSpec = Prelude.pure newValue, ..}
instance Property "CacheConfig" App where
  type PropertyType "CacheConfig" App = CacheConfigProperty
  set newValue App {..}
    = App {cacheConfig = Prelude.pure newValue, ..}
instance Property "ComputeRoleArn" App where
  type PropertyType "ComputeRoleArn" App = Value Prelude.Text
  set newValue App {..}
    = App {computeRoleArn = Prelude.pure newValue, ..}
instance Property "CustomHeaders" App where
  type PropertyType "CustomHeaders" App = Value Prelude.Text
  set newValue App {..}
    = App {customHeaders = Prelude.pure newValue, ..}
instance Property "CustomRules" App where
  type PropertyType "CustomRules" App = [CustomRuleProperty]
  set newValue App {..}
    = App {customRules = Prelude.pure newValue, ..}
instance Property "Description" App where
  type PropertyType "Description" App = Value Prelude.Text
  set newValue App {..}
    = App {description = Prelude.pure newValue, ..}
instance Property "EnableBranchAutoDeletion" App where
  type PropertyType "EnableBranchAutoDeletion" App = Value Prelude.Bool
  set newValue App {..}
    = App {enableBranchAutoDeletion = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" App where
  type PropertyType "EnvironmentVariables" App = [EnvironmentVariableProperty]
  set newValue App {..}
    = App {environmentVariables = Prelude.pure newValue, ..}
instance Property "IAMServiceRole" App where
  type PropertyType "IAMServiceRole" App = Value Prelude.Text
  set newValue App {..}
    = App {iAMServiceRole = Prelude.pure newValue, ..}
instance Property "JobConfig" App where
  type PropertyType "JobConfig" App = JobConfigProperty
  set newValue App {..} = App {jobConfig = Prelude.pure newValue, ..}
instance Property "Name" App where
  type PropertyType "Name" App = Value Prelude.Text
  set newValue App {..} = App {name = newValue, ..}
instance Property "OauthToken" App where
  type PropertyType "OauthToken" App = Value Prelude.Text
  set newValue App {..}
    = App {oauthToken = Prelude.pure newValue, ..}
instance Property "Platform" App where
  type PropertyType "Platform" App = Value Prelude.Text
  set newValue App {..} = App {platform = Prelude.pure newValue, ..}
instance Property "Repository" App where
  type PropertyType "Repository" App = Value Prelude.Text
  set newValue App {..}
    = App {repository = Prelude.pure newValue, ..}
instance Property "Tags" App where
  type PropertyType "Tags" App = [Tag]
  set newValue App {..} = App {tags = Prelude.pure newValue, ..}