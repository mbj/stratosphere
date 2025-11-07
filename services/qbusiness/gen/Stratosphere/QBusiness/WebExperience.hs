module Stratosphere.QBusiness.WebExperience (
        module Exports, WebExperience(..), mkWebExperience
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.BrowserExtensionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.CustomizationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.IdentityProviderConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WebExperience
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html>
    WebExperience {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-applicationid>
                   applicationId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-browserextensionconfiguration>
                   browserExtensionConfiguration :: (Prelude.Maybe BrowserExtensionConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-customizationconfiguration>
                   customizationConfiguration :: (Prelude.Maybe CustomizationConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-identityproviderconfiguration>
                   identityProviderConfiguration :: (Prelude.Maybe IdentityProviderConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-origins>
                   origins :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-rolearn>
                   roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-samplepromptscontrolmode>
                   samplePromptsControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-subtitle>
                   subtitle :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-title>
                   title :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-webexperience.html#cfn-qbusiness-webexperience-welcomemessage>
                   welcomeMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebExperience :: Value Prelude.Text -> WebExperience
mkWebExperience applicationId
  = WebExperience
      {haddock_workaround_ = (), applicationId = applicationId,
       browserExtensionConfiguration = Prelude.Nothing,
       customizationConfiguration = Prelude.Nothing,
       identityProviderConfiguration = Prelude.Nothing,
       origins = Prelude.Nothing, roleArn = Prelude.Nothing,
       samplePromptsControlMode = Prelude.Nothing,
       subtitle = Prelude.Nothing, tags = Prelude.Nothing,
       title = Prelude.Nothing, welcomeMessage = Prelude.Nothing}
instance ToResourceProperties WebExperience where
  toResourceProperties WebExperience {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes
                              [(JSON..=) "BrowserExtensionConfiguration"
                                 Prelude.<$> browserExtensionConfiguration,
                               (JSON..=) "CustomizationConfiguration"
                                 Prelude.<$> customizationConfiguration,
                               (JSON..=) "IdentityProviderConfiguration"
                                 Prelude.<$> identityProviderConfiguration,
                               (JSON..=) "Origins" Prelude.<$> origins,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "SamplePromptsControlMode"
                                 Prelude.<$> samplePromptsControlMode,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "WelcomeMessage" Prelude.<$> welcomeMessage]))}
instance JSON.ToJSON WebExperience where
  toJSON WebExperience {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes
                 [(JSON..=) "BrowserExtensionConfiguration"
                    Prelude.<$> browserExtensionConfiguration,
                  (JSON..=) "CustomizationConfiguration"
                    Prelude.<$> customizationConfiguration,
                  (JSON..=) "IdentityProviderConfiguration"
                    Prelude.<$> identityProviderConfiguration,
                  (JSON..=) "Origins" Prelude.<$> origins,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "SamplePromptsControlMode"
                    Prelude.<$> samplePromptsControlMode,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "WelcomeMessage" Prelude.<$> welcomeMessage])))
instance Property "ApplicationId" WebExperience where
  type PropertyType "ApplicationId" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {applicationId = newValue, ..}
instance Property "BrowserExtensionConfiguration" WebExperience where
  type PropertyType "BrowserExtensionConfiguration" WebExperience = BrowserExtensionConfigurationProperty
  set newValue WebExperience {..}
    = WebExperience
        {browserExtensionConfiguration = Prelude.pure newValue, ..}
instance Property "CustomizationConfiguration" WebExperience where
  type PropertyType "CustomizationConfiguration" WebExperience = CustomizationConfigurationProperty
  set newValue WebExperience {..}
    = WebExperience
        {customizationConfiguration = Prelude.pure newValue, ..}
instance Property "IdentityProviderConfiguration" WebExperience where
  type PropertyType "IdentityProviderConfiguration" WebExperience = IdentityProviderConfigurationProperty
  set newValue WebExperience {..}
    = WebExperience
        {identityProviderConfiguration = Prelude.pure newValue, ..}
instance Property "Origins" WebExperience where
  type PropertyType "Origins" WebExperience = ValueList Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {origins = Prelude.pure newValue, ..}
instance Property "RoleArn" WebExperience where
  type PropertyType "RoleArn" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {roleArn = Prelude.pure newValue, ..}
instance Property "SamplePromptsControlMode" WebExperience where
  type PropertyType "SamplePromptsControlMode" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience
        {samplePromptsControlMode = Prelude.pure newValue, ..}
instance Property "Subtitle" WebExperience where
  type PropertyType "Subtitle" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {subtitle = Prelude.pure newValue, ..}
instance Property "Tags" WebExperience where
  type PropertyType "Tags" WebExperience = [Tag]
  set newValue WebExperience {..}
    = WebExperience {tags = Prelude.pure newValue, ..}
instance Property "Title" WebExperience where
  type PropertyType "Title" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {title = Prelude.pure newValue, ..}
instance Property "WelcomeMessage" WebExperience where
  type PropertyType "WelcomeMessage" WebExperience = Value Prelude.Text
  set newValue WebExperience {..}
    = WebExperience {welcomeMessage = Prelude.pure newValue, ..}