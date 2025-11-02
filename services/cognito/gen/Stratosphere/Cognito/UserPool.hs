module Stratosphere.Cognito.UserPool (
        module Exports, UserPool(..), mkUserPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.AccountRecoverySettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.AdminCreateUserConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.DeviceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.EmailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.LambdaConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.PoliciesProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.SchemaAttributeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.SmsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.UserAttributeUpdateSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.UserPoolAddOnsProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.UsernameConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.VerificationMessageTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPool
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html>
    UserPool {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-accountrecoverysetting>
              accountRecoverySetting :: (Prelude.Maybe AccountRecoverySettingProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-admincreateuserconfig>
              adminCreateUserConfig :: (Prelude.Maybe AdminCreateUserConfigProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-aliasattributes>
              aliasAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-autoverifiedattributes>
              autoVerifiedAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-deletionprotection>
              deletionProtection :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-deviceconfiguration>
              deviceConfiguration :: (Prelude.Maybe DeviceConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailauthenticationmessage>
              emailAuthenticationMessage :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailauthenticationsubject>
              emailAuthenticationSubject :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailconfiguration>
              emailConfiguration :: (Prelude.Maybe EmailConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationmessage>
              emailVerificationMessage :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationsubject>
              emailVerificationSubject :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-enabledmfas>
              enabledMfas :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-lambdaconfig>
              lambdaConfig :: (Prelude.Maybe LambdaConfigProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-mfaconfiguration>
              mfaConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-policies>
              policies :: (Prelude.Maybe PoliciesProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-schema>
              schema :: (Prelude.Maybe [SchemaAttributeProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsauthenticationmessage>
              smsAuthenticationMessage :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsconfiguration>
              smsConfiguration :: (Prelude.Maybe SmsConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsverificationmessage>
              smsVerificationMessage :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userattributeupdatesettings>
              userAttributeUpdateSettings :: (Prelude.Maybe UserAttributeUpdateSettingsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooladdons>
              userPoolAddOns :: (Prelude.Maybe UserPoolAddOnsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpoolname>
              userPoolName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltags>
              userPoolTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltier>
              userPoolTier :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameattributes>
              usernameAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameconfiguration>
              usernameConfiguration :: (Prelude.Maybe UsernameConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-verificationmessagetemplate>
              verificationMessageTemplate :: (Prelude.Maybe VerificationMessageTemplateProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-webauthnrelyingpartyid>
              webAuthnRelyingPartyID :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-webauthnuserverification>
              webAuthnUserVerification :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPool :: UserPool
mkUserPool
  = UserPool
      {haddock_workaround_ = (),
       accountRecoverySetting = Prelude.Nothing,
       adminCreateUserConfig = Prelude.Nothing,
       aliasAttributes = Prelude.Nothing,
       autoVerifiedAttributes = Prelude.Nothing,
       deletionProtection = Prelude.Nothing,
       deviceConfiguration = Prelude.Nothing,
       emailAuthenticationMessage = Prelude.Nothing,
       emailAuthenticationSubject = Prelude.Nothing,
       emailConfiguration = Prelude.Nothing,
       emailVerificationMessage = Prelude.Nothing,
       emailVerificationSubject = Prelude.Nothing,
       enabledMfas = Prelude.Nothing, lambdaConfig = Prelude.Nothing,
       mfaConfiguration = Prelude.Nothing, policies = Prelude.Nothing,
       schema = Prelude.Nothing,
       smsAuthenticationMessage = Prelude.Nothing,
       smsConfiguration = Prelude.Nothing,
       smsVerificationMessage = Prelude.Nothing,
       userAttributeUpdateSettings = Prelude.Nothing,
       userPoolAddOns = Prelude.Nothing, userPoolName = Prelude.Nothing,
       userPoolTags = Prelude.Nothing, userPoolTier = Prelude.Nothing,
       usernameAttributes = Prelude.Nothing,
       usernameConfiguration = Prelude.Nothing,
       verificationMessageTemplate = Prelude.Nothing,
       webAuthnRelyingPartyID = Prelude.Nothing,
       webAuthnUserVerification = Prelude.Nothing}
instance ToResourceProperties UserPool where
  toResourceProperties UserPool {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountRecoverySetting"
                              Prelude.<$> accountRecoverySetting,
                            (JSON..=) "AdminCreateUserConfig"
                              Prelude.<$> adminCreateUserConfig,
                            (JSON..=) "AliasAttributes" Prelude.<$> aliasAttributes,
                            (JSON..=) "AutoVerifiedAttributes"
                              Prelude.<$> autoVerifiedAttributes,
                            (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                            (JSON..=) "DeviceConfiguration" Prelude.<$> deviceConfiguration,
                            (JSON..=) "EmailAuthenticationMessage"
                              Prelude.<$> emailAuthenticationMessage,
                            (JSON..=) "EmailAuthenticationSubject"
                              Prelude.<$> emailAuthenticationSubject,
                            (JSON..=) "EmailConfiguration" Prelude.<$> emailConfiguration,
                            (JSON..=) "EmailVerificationMessage"
                              Prelude.<$> emailVerificationMessage,
                            (JSON..=) "EmailVerificationSubject"
                              Prelude.<$> emailVerificationSubject,
                            (JSON..=) "EnabledMfas" Prelude.<$> enabledMfas,
                            (JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig,
                            (JSON..=) "MfaConfiguration" Prelude.<$> mfaConfiguration,
                            (JSON..=) "Policies" Prelude.<$> policies,
                            (JSON..=) "Schema" Prelude.<$> schema,
                            (JSON..=) "SmsAuthenticationMessage"
                              Prelude.<$> smsAuthenticationMessage,
                            (JSON..=) "SmsConfiguration" Prelude.<$> smsConfiguration,
                            (JSON..=) "SmsVerificationMessage"
                              Prelude.<$> smsVerificationMessage,
                            (JSON..=) "UserAttributeUpdateSettings"
                              Prelude.<$> userAttributeUpdateSettings,
                            (JSON..=) "UserPoolAddOns" Prelude.<$> userPoolAddOns,
                            (JSON..=) "UserPoolName" Prelude.<$> userPoolName,
                            (JSON..=) "UserPoolTags" Prelude.<$> userPoolTags,
                            (JSON..=) "UserPoolTier" Prelude.<$> userPoolTier,
                            (JSON..=) "UsernameAttributes" Prelude.<$> usernameAttributes,
                            (JSON..=) "UsernameConfiguration"
                              Prelude.<$> usernameConfiguration,
                            (JSON..=) "VerificationMessageTemplate"
                              Prelude.<$> verificationMessageTemplate,
                            (JSON..=) "WebAuthnRelyingPartyID"
                              Prelude.<$> webAuthnRelyingPartyID,
                            (JSON..=) "WebAuthnUserVerification"
                              Prelude.<$> webAuthnUserVerification])}
instance JSON.ToJSON UserPool where
  toJSON UserPool {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountRecoverySetting"
                 Prelude.<$> accountRecoverySetting,
               (JSON..=) "AdminCreateUserConfig"
                 Prelude.<$> adminCreateUserConfig,
               (JSON..=) "AliasAttributes" Prelude.<$> aliasAttributes,
               (JSON..=) "AutoVerifiedAttributes"
                 Prelude.<$> autoVerifiedAttributes,
               (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
               (JSON..=) "DeviceConfiguration" Prelude.<$> deviceConfiguration,
               (JSON..=) "EmailAuthenticationMessage"
                 Prelude.<$> emailAuthenticationMessage,
               (JSON..=) "EmailAuthenticationSubject"
                 Prelude.<$> emailAuthenticationSubject,
               (JSON..=) "EmailConfiguration" Prelude.<$> emailConfiguration,
               (JSON..=) "EmailVerificationMessage"
                 Prelude.<$> emailVerificationMessage,
               (JSON..=) "EmailVerificationSubject"
                 Prelude.<$> emailVerificationSubject,
               (JSON..=) "EnabledMfas" Prelude.<$> enabledMfas,
               (JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig,
               (JSON..=) "MfaConfiguration" Prelude.<$> mfaConfiguration,
               (JSON..=) "Policies" Prelude.<$> policies,
               (JSON..=) "Schema" Prelude.<$> schema,
               (JSON..=) "SmsAuthenticationMessage"
                 Prelude.<$> smsAuthenticationMessage,
               (JSON..=) "SmsConfiguration" Prelude.<$> smsConfiguration,
               (JSON..=) "SmsVerificationMessage"
                 Prelude.<$> smsVerificationMessage,
               (JSON..=) "UserAttributeUpdateSettings"
                 Prelude.<$> userAttributeUpdateSettings,
               (JSON..=) "UserPoolAddOns" Prelude.<$> userPoolAddOns,
               (JSON..=) "UserPoolName" Prelude.<$> userPoolName,
               (JSON..=) "UserPoolTags" Prelude.<$> userPoolTags,
               (JSON..=) "UserPoolTier" Prelude.<$> userPoolTier,
               (JSON..=) "UsernameAttributes" Prelude.<$> usernameAttributes,
               (JSON..=) "UsernameConfiguration"
                 Prelude.<$> usernameConfiguration,
               (JSON..=) "VerificationMessageTemplate"
                 Prelude.<$> verificationMessageTemplate,
               (JSON..=) "WebAuthnRelyingPartyID"
                 Prelude.<$> webAuthnRelyingPartyID,
               (JSON..=) "WebAuthnUserVerification"
                 Prelude.<$> webAuthnUserVerification]))
instance Property "AccountRecoverySetting" UserPool where
  type PropertyType "AccountRecoverySetting" UserPool = AccountRecoverySettingProperty
  set newValue UserPool {..}
    = UserPool {accountRecoverySetting = Prelude.pure newValue, ..}
instance Property "AdminCreateUserConfig" UserPool where
  type PropertyType "AdminCreateUserConfig" UserPool = AdminCreateUserConfigProperty
  set newValue UserPool {..}
    = UserPool {adminCreateUserConfig = Prelude.pure newValue, ..}
instance Property "AliasAttributes" UserPool where
  type PropertyType "AliasAttributes" UserPool = ValueList Prelude.Text
  set newValue UserPool {..}
    = UserPool {aliasAttributes = Prelude.pure newValue, ..}
instance Property "AutoVerifiedAttributes" UserPool where
  type PropertyType "AutoVerifiedAttributes" UserPool = ValueList Prelude.Text
  set newValue UserPool {..}
    = UserPool {autoVerifiedAttributes = Prelude.pure newValue, ..}
instance Property "DeletionProtection" UserPool where
  type PropertyType "DeletionProtection" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {deletionProtection = Prelude.pure newValue, ..}
instance Property "DeviceConfiguration" UserPool where
  type PropertyType "DeviceConfiguration" UserPool = DeviceConfigurationProperty
  set newValue UserPool {..}
    = UserPool {deviceConfiguration = Prelude.pure newValue, ..}
instance Property "EmailAuthenticationMessage" UserPool where
  type PropertyType "EmailAuthenticationMessage" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {emailAuthenticationMessage = Prelude.pure newValue, ..}
instance Property "EmailAuthenticationSubject" UserPool where
  type PropertyType "EmailAuthenticationSubject" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {emailAuthenticationSubject = Prelude.pure newValue, ..}
instance Property "EmailConfiguration" UserPool where
  type PropertyType "EmailConfiguration" UserPool = EmailConfigurationProperty
  set newValue UserPool {..}
    = UserPool {emailConfiguration = Prelude.pure newValue, ..}
instance Property "EmailVerificationMessage" UserPool where
  type PropertyType "EmailVerificationMessage" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {emailVerificationMessage = Prelude.pure newValue, ..}
instance Property "EmailVerificationSubject" UserPool where
  type PropertyType "EmailVerificationSubject" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {emailVerificationSubject = Prelude.pure newValue, ..}
instance Property "EnabledMfas" UserPool where
  type PropertyType "EnabledMfas" UserPool = ValueList Prelude.Text
  set newValue UserPool {..}
    = UserPool {enabledMfas = Prelude.pure newValue, ..}
instance Property "LambdaConfig" UserPool where
  type PropertyType "LambdaConfig" UserPool = LambdaConfigProperty
  set newValue UserPool {..}
    = UserPool {lambdaConfig = Prelude.pure newValue, ..}
instance Property "MfaConfiguration" UserPool where
  type PropertyType "MfaConfiguration" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {mfaConfiguration = Prelude.pure newValue, ..}
instance Property "Policies" UserPool where
  type PropertyType "Policies" UserPool = PoliciesProperty
  set newValue UserPool {..}
    = UserPool {policies = Prelude.pure newValue, ..}
instance Property "Schema" UserPool where
  type PropertyType "Schema" UserPool = [SchemaAttributeProperty]
  set newValue UserPool {..}
    = UserPool {schema = Prelude.pure newValue, ..}
instance Property "SmsAuthenticationMessage" UserPool where
  type PropertyType "SmsAuthenticationMessage" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {smsAuthenticationMessage = Prelude.pure newValue, ..}
instance Property "SmsConfiguration" UserPool where
  type PropertyType "SmsConfiguration" UserPool = SmsConfigurationProperty
  set newValue UserPool {..}
    = UserPool {smsConfiguration = Prelude.pure newValue, ..}
instance Property "SmsVerificationMessage" UserPool where
  type PropertyType "SmsVerificationMessage" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {smsVerificationMessage = Prelude.pure newValue, ..}
instance Property "UserAttributeUpdateSettings" UserPool where
  type PropertyType "UserAttributeUpdateSettings" UserPool = UserAttributeUpdateSettingsProperty
  set newValue UserPool {..}
    = UserPool
        {userAttributeUpdateSettings = Prelude.pure newValue, ..}
instance Property "UserPoolAddOns" UserPool where
  type PropertyType "UserPoolAddOns" UserPool = UserPoolAddOnsProperty
  set newValue UserPool {..}
    = UserPool {userPoolAddOns = Prelude.pure newValue, ..}
instance Property "UserPoolName" UserPool where
  type PropertyType "UserPoolName" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {userPoolName = Prelude.pure newValue, ..}
instance Property "UserPoolTags" UserPool where
  type PropertyType "UserPoolTags" UserPool = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue UserPool {..}
    = UserPool {userPoolTags = Prelude.pure newValue, ..}
instance Property "UserPoolTier" UserPool where
  type PropertyType "UserPoolTier" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {userPoolTier = Prelude.pure newValue, ..}
instance Property "UsernameAttributes" UserPool where
  type PropertyType "UsernameAttributes" UserPool = ValueList Prelude.Text
  set newValue UserPool {..}
    = UserPool {usernameAttributes = Prelude.pure newValue, ..}
instance Property "UsernameConfiguration" UserPool where
  type PropertyType "UsernameConfiguration" UserPool = UsernameConfigurationProperty
  set newValue UserPool {..}
    = UserPool {usernameConfiguration = Prelude.pure newValue, ..}
instance Property "VerificationMessageTemplate" UserPool where
  type PropertyType "VerificationMessageTemplate" UserPool = VerificationMessageTemplateProperty
  set newValue UserPool {..}
    = UserPool
        {verificationMessageTemplate = Prelude.pure newValue, ..}
instance Property "WebAuthnRelyingPartyID" UserPool where
  type PropertyType "WebAuthnRelyingPartyID" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {webAuthnRelyingPartyID = Prelude.pure newValue, ..}
instance Property "WebAuthnUserVerification" UserPool where
  type PropertyType "WebAuthnUserVerification" UserPool = Value Prelude.Text
  set newValue UserPool {..}
    = UserPool {webAuthnUserVerification = Prelude.pure newValue, ..}