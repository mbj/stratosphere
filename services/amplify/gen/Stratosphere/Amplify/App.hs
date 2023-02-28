module Stratosphere.Amplify.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.App.AutoBranchCreationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.BasicAuthConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.CustomRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.App.EnvironmentVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data App
  = App {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
         autoBranchCreationConfig :: (Prelude.Maybe AutoBranchCreationConfigProperty),
         basicAuthConfig :: (Prelude.Maybe BasicAuthConfigProperty),
         buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
         customHeaders :: (Prelude.Maybe (Value Prelude.Text)),
         customRules :: (Prelude.Maybe [CustomRuleProperty]),
         description :: (Prelude.Maybe (Value Prelude.Text)),
         enableBranchAutoDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
         environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
         iAMServiceRole :: (Prelude.Maybe (Value Prelude.Text)),
         name :: (Value Prelude.Text),
         oauthToken :: (Prelude.Maybe (Value Prelude.Text)),
         platform :: (Prelude.Maybe (Value Prelude.Text)),
         repository :: (Prelude.Maybe (Value Prelude.Text)),
         tags :: (Prelude.Maybe [Tag])}
mkApp :: Value Prelude.Text -> App
mkApp name
  = App
      {name = name, accessToken = Prelude.Nothing,
       autoBranchCreationConfig = Prelude.Nothing,
       basicAuthConfig = Prelude.Nothing, buildSpec = Prelude.Nothing,
       customHeaders = Prelude.Nothing, customRules = Prelude.Nothing,
       description = Prelude.Nothing,
       enableBranchAutoDeletion = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       iAMServiceRole = Prelude.Nothing, oauthToken = Prelude.Nothing,
       platform = Prelude.Nothing, repository = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                               (JSON..=) "CustomHeaders" Prelude.<$> customHeaders,
                               (JSON..=) "CustomRules" Prelude.<$> customRules,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableBranchAutoDeletion"
                                 Prelude.<$> enableBranchAutoDeletion,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "IAMServiceRole" Prelude.<$> iAMServiceRole,
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
                  (JSON..=) "CustomHeaders" Prelude.<$> customHeaders,
                  (JSON..=) "CustomRules" Prelude.<$> customRules,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableBranchAutoDeletion"
                    Prelude.<$> enableBranchAutoDeletion,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "IAMServiceRole" Prelude.<$> iAMServiceRole,
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