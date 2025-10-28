module Stratosphere.QBusiness.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Application.AttachmentsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Application.AutoSubscriptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Application.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Application.PersonalizationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Application.QAppsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-attachmentsconfiguration>
                 attachmentsConfiguration :: (Prelude.Maybe AttachmentsConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-autosubscriptionconfiguration>
                 autoSubscriptionConfiguration :: (Prelude.Maybe AutoSubscriptionConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-clientidsforoidc>
                 clientIdsForOIDC :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-displayname>
                 displayName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-encryptionconfiguration>
                 encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-iamidentityproviderarn>
                 iamIdentityProviderArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-identitycenterinstancearn>
                 identityCenterInstanceArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-identitytype>
                 identityType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-personalizationconfiguration>
                 personalizationConfiguration :: (Prelude.Maybe PersonalizationConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-qappsconfiguration>
                 qAppsConfiguration :: (Prelude.Maybe QAppsConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-rolearn>
                 roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-application.html#cfn-qbusiness-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: Value Prelude.Text -> Application
mkApplication displayName
  = Application
      {haddock_workaround_ = (), displayName = displayName,
       attachmentsConfiguration = Prelude.Nothing,
       autoSubscriptionConfiguration = Prelude.Nothing,
       clientIdsForOIDC = Prelude.Nothing, description = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       iamIdentityProviderArn = Prelude.Nothing,
       identityCenterInstanceArn = Prelude.Nothing,
       identityType = Prelude.Nothing,
       personalizationConfiguration = Prelude.Nothing,
       qAppsConfiguration = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachmentsConfiguration"
                                 Prelude.<$> attachmentsConfiguration,
                               (JSON..=) "AutoSubscriptionConfiguration"
                                 Prelude.<$> autoSubscriptionConfiguration,
                               (JSON..=) "ClientIdsForOIDC" Prelude.<$> clientIdsForOIDC,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "IamIdentityProviderArn"
                                 Prelude.<$> iamIdentityProviderArn,
                               (JSON..=) "IdentityCenterInstanceArn"
                                 Prelude.<$> identityCenterInstanceArn,
                               (JSON..=) "IdentityType" Prelude.<$> identityType,
                               (JSON..=) "PersonalizationConfiguration"
                                 Prelude.<$> personalizationConfiguration,
                               (JSON..=) "QAppsConfiguration" Prelude.<$> qAppsConfiguration,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName]
              (Prelude.catMaybes
                 [(JSON..=) "AttachmentsConfiguration"
                    Prelude.<$> attachmentsConfiguration,
                  (JSON..=) "AutoSubscriptionConfiguration"
                    Prelude.<$> autoSubscriptionConfiguration,
                  (JSON..=) "ClientIdsForOIDC" Prelude.<$> clientIdsForOIDC,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "IamIdentityProviderArn"
                    Prelude.<$> iamIdentityProviderArn,
                  (JSON..=) "IdentityCenterInstanceArn"
                    Prelude.<$> identityCenterInstanceArn,
                  (JSON..=) "IdentityType" Prelude.<$> identityType,
                  (JSON..=) "PersonalizationConfiguration"
                    Prelude.<$> personalizationConfiguration,
                  (JSON..=) "QAppsConfiguration" Prelude.<$> qAppsConfiguration,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AttachmentsConfiguration" Application where
  type PropertyType "AttachmentsConfiguration" Application = AttachmentsConfigurationProperty
  set newValue Application {..}
    = Application
        {attachmentsConfiguration = Prelude.pure newValue, ..}
instance Property "AutoSubscriptionConfiguration" Application where
  type PropertyType "AutoSubscriptionConfiguration" Application = AutoSubscriptionConfigurationProperty
  set newValue Application {..}
    = Application
        {autoSubscriptionConfiguration = Prelude.pure newValue, ..}
instance Property "ClientIdsForOIDC" Application where
  type PropertyType "ClientIdsForOIDC" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {clientIdsForOIDC = Prelude.pure newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Application where
  type PropertyType "DisplayName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {displayName = newValue, ..}
instance Property "EncryptionConfiguration" Application where
  type PropertyType "EncryptionConfiguration" Application = EncryptionConfigurationProperty
  set newValue Application {..}
    = Application {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "IamIdentityProviderArn" Application where
  type PropertyType "IamIdentityProviderArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {iamIdentityProviderArn = Prelude.pure newValue, ..}
instance Property "IdentityCenterInstanceArn" Application where
  type PropertyType "IdentityCenterInstanceArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application
        {identityCenterInstanceArn = Prelude.pure newValue, ..}
instance Property "IdentityType" Application where
  type PropertyType "IdentityType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {identityType = Prelude.pure newValue, ..}
instance Property "PersonalizationConfiguration" Application where
  type PropertyType "PersonalizationConfiguration" Application = PersonalizationConfigurationProperty
  set newValue Application {..}
    = Application
        {personalizationConfiguration = Prelude.pure newValue, ..}
instance Property "QAppsConfiguration" Application where
  type PropertyType "QAppsConfiguration" Application = QAppsConfigurationProperty
  set newValue Application {..}
    = Application {qAppsConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" Application where
  type PropertyType "RoleArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}