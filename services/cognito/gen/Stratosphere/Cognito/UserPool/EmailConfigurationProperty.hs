module Stratosphere.Cognito.UserPool.EmailConfigurationProperty (
        EmailConfigurationProperty(..), mkEmailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailConfigurationProperty
  = EmailConfigurationProperty {configurationSet :: (Prelude.Maybe (Value Prelude.Text)),
                                emailSendingAccount :: (Prelude.Maybe (Value Prelude.Text)),
                                from :: (Prelude.Maybe (Value Prelude.Text)),
                                replyToEmailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                sourceArn :: (Prelude.Maybe (Value Prelude.Text))}
mkEmailConfigurationProperty :: EmailConfigurationProperty
mkEmailConfigurationProperty
  = EmailConfigurationProperty
      {configurationSet = Prelude.Nothing,
       emailSendingAccount = Prelude.Nothing, from = Prelude.Nothing,
       replyToEmailAddress = Prelude.Nothing, sourceArn = Prelude.Nothing}
instance ToResourceProperties EmailConfigurationProperty where
  toResourceProperties EmailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.EmailConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationSet" Prelude.<$> configurationSet,
                            (JSON..=) "EmailSendingAccount" Prelude.<$> emailSendingAccount,
                            (JSON..=) "From" Prelude.<$> from,
                            (JSON..=) "ReplyToEmailAddress" Prelude.<$> replyToEmailAddress,
                            (JSON..=) "SourceArn" Prelude.<$> sourceArn])}
instance JSON.ToJSON EmailConfigurationProperty where
  toJSON EmailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationSet" Prelude.<$> configurationSet,
               (JSON..=) "EmailSendingAccount" Prelude.<$> emailSendingAccount,
               (JSON..=) "From" Prelude.<$> from,
               (JSON..=) "ReplyToEmailAddress" Prelude.<$> replyToEmailAddress,
               (JSON..=) "SourceArn" Prelude.<$> sourceArn]))
instance Property "ConfigurationSet" EmailConfigurationProperty where
  type PropertyType "ConfigurationSet" EmailConfigurationProperty = Value Prelude.Text
  set newValue EmailConfigurationProperty {..}
    = EmailConfigurationProperty
        {configurationSet = Prelude.pure newValue, ..}
instance Property "EmailSendingAccount" EmailConfigurationProperty where
  type PropertyType "EmailSendingAccount" EmailConfigurationProperty = Value Prelude.Text
  set newValue EmailConfigurationProperty {..}
    = EmailConfigurationProperty
        {emailSendingAccount = Prelude.pure newValue, ..}
instance Property "From" EmailConfigurationProperty where
  type PropertyType "From" EmailConfigurationProperty = Value Prelude.Text
  set newValue EmailConfigurationProperty {..}
    = EmailConfigurationProperty {from = Prelude.pure newValue, ..}
instance Property "ReplyToEmailAddress" EmailConfigurationProperty where
  type PropertyType "ReplyToEmailAddress" EmailConfigurationProperty = Value Prelude.Text
  set newValue EmailConfigurationProperty {..}
    = EmailConfigurationProperty
        {replyToEmailAddress = Prelude.pure newValue, ..}
instance Property "SourceArn" EmailConfigurationProperty where
  type PropertyType "SourceArn" EmailConfigurationProperty = Value Prelude.Text
  set newValue EmailConfigurationProperty {..}
    = EmailConfigurationProperty
        {sourceArn = Prelude.pure newValue, ..}