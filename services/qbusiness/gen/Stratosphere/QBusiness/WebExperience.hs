module Stratosphere.QBusiness.WebExperience (
        module Exports, WebExperience(..), mkWebExperience
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.IdentityProviderConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WebExperience
  = WebExperience {applicationId :: (Value Prelude.Text),
                   identityProviderConfiguration :: (Prelude.Maybe IdentityProviderConfigurationProperty),
                   origins :: (Prelude.Maybe (ValueList Prelude.Text)),
                   roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                   samplePromptsControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                   subtitle :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag]),
                   title :: (Prelude.Maybe (Value Prelude.Text)),
                   welcomeMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebExperience :: Value Prelude.Text -> WebExperience
mkWebExperience applicationId
  = WebExperience
      {applicationId = applicationId,
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
                              [(JSON..=) "IdentityProviderConfiguration"
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
                 [(JSON..=) "IdentityProviderConfiguration"
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