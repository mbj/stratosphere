module Stratosphere.AppIntegrations.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.ApplicationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.ApplicationSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.IframeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-applicationconfig>
                 applicationConfig :: (Prelude.Maybe ApplicationConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-applicationsourceconfig>
                 applicationSourceConfig :: ApplicationSourceConfigProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-description>
                 description :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-iframeconfig>
                 iframeConfig :: (Prelude.Maybe IframeConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-initializationtimeout>
                 initializationTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-isservice>
                 isService :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-namespace>
                 namespace :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-permissions>
                 permissions :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-application.html#cfn-appintegrations-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  ApplicationSourceConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication applicationSourceConfig description name namespace
  = Application
      {haddock_workaround_ = (),
       applicationSourceConfig = applicationSourceConfig,
       description = description, name = name, namespace = namespace,
       applicationConfig = Prelude.Nothing,
       iframeConfig = Prelude.Nothing,
       initializationTimeout = Prelude.Nothing,
       isService = Prelude.Nothing, permissions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationSourceConfig" JSON..= applicationSourceConfig,
                            "Description" JSON..= description, "Name" JSON..= name,
                            "Namespace" JSON..= namespace]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationConfig" Prelude.<$> applicationConfig,
                               (JSON..=) "IframeConfig" Prelude.<$> iframeConfig,
                               (JSON..=) "InitializationTimeout"
                                 Prelude.<$> initializationTimeout,
                               (JSON..=) "IsService" Prelude.<$> isService,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationSourceConfig" JSON..= applicationSourceConfig,
               "Description" JSON..= description, "Name" JSON..= name,
               "Namespace" JSON..= namespace]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationConfig" Prelude.<$> applicationConfig,
                  (JSON..=) "IframeConfig" Prelude.<$> iframeConfig,
                  (JSON..=) "InitializationTimeout"
                    Prelude.<$> initializationTimeout,
                  (JSON..=) "IsService" Prelude.<$> isService,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationConfig" Application where
  type PropertyType "ApplicationConfig" Application = ApplicationConfigProperty
  set newValue Application {..}
    = Application {applicationConfig = Prelude.pure newValue, ..}
instance Property "ApplicationSourceConfig" Application where
  type PropertyType "ApplicationSourceConfig" Application = ApplicationSourceConfigProperty
  set newValue Application {..}
    = Application {applicationSourceConfig = newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = newValue, ..}
instance Property "IframeConfig" Application where
  type PropertyType "IframeConfig" Application = IframeConfigProperty
  set newValue Application {..}
    = Application {iframeConfig = Prelude.pure newValue, ..}
instance Property "InitializationTimeout" Application where
  type PropertyType "InitializationTimeout" Application = Value Prelude.Integer
  set newValue Application {..}
    = Application {initializationTimeout = Prelude.pure newValue, ..}
instance Property "IsService" Application where
  type PropertyType "IsService" Application = Value Prelude.Bool
  set newValue Application {..}
    = Application {isService = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Namespace" Application where
  type PropertyType "Namespace" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {namespace = newValue, ..}
instance Property "Permissions" Application where
  type PropertyType "Permissions" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {permissions = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}