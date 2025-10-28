module Stratosphere.Cognito.UserPool.EmailConfigurationProperty (
        EmailConfigurationProperty(..), mkEmailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html>
    EmailConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-configurationset>
                                configurationSet :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-emailsendingaccount>
                                emailSendingAccount :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-from>
                                from :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-replytoemailaddress>
                                replyToEmailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-sourcearn>
                                sourceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailConfigurationProperty :: EmailConfigurationProperty
mkEmailConfigurationProperty
  = EmailConfigurationProperty
      {haddock_workaround_ = (), configurationSet = Prelude.Nothing,
       emailSendingAccount = Prelude.Nothing, from = Prelude.Nothing,
       replyToEmailAddress = Prelude.Nothing, sourceArn = Prelude.Nothing}
instance ToResourceProperties EmailConfigurationProperty where
  toResourceProperties EmailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.EmailConfiguration",
         supportsTags = Prelude.False,
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