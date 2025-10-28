module Stratosphere.WorkSpacesWeb.Portal (
        Portal(..), mkPortal
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Portal
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html>
    Portal {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-additionalencryptioncontext>
            additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-authenticationtype>
            authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-browsersettingsarn>
            browserSettingsArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-customermanagedkey>
            customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-dataprotectionsettingsarn>
            dataProtectionSettingsArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-displayname>
            displayName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-instancetype>
            instanceType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-ipaccesssettingsarn>
            ipAccessSettingsArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-maxconcurrentsessions>
            maxConcurrentSessions :: (Prelude.Maybe (Value Prelude.Double)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-networksettingsarn>
            networkSettingsArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-truststorearn>
            trustStoreArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-useraccessloggingsettingsarn>
            userAccessLoggingSettingsArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-portal.html#cfn-workspacesweb-portal-usersettingsarn>
            userSettingsArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortal :: Portal
mkPortal
  = Portal
      {haddock_workaround_ = (),
       additionalEncryptionContext = Prelude.Nothing,
       authenticationType = Prelude.Nothing,
       browserSettingsArn = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       dataProtectionSettingsArn = Prelude.Nothing,
       displayName = Prelude.Nothing, instanceType = Prelude.Nothing,
       ipAccessSettingsArn = Prelude.Nothing,
       maxConcurrentSessions = Prelude.Nothing,
       networkSettingsArn = Prelude.Nothing, tags = Prelude.Nothing,
       trustStoreArn = Prelude.Nothing,
       userAccessLoggingSettingsArn = Prelude.Nothing,
       userSettingsArn = Prelude.Nothing}
instance ToResourceProperties Portal where
  toResourceProperties Portal {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::Portal",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalEncryptionContext"
                              Prelude.<$> additionalEncryptionContext,
                            (JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                            (JSON..=) "BrowserSettingsArn" Prelude.<$> browserSettingsArn,
                            (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                            (JSON..=) "DataProtectionSettingsArn"
                              Prelude.<$> dataProtectionSettingsArn,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "IpAccessSettingsArn" Prelude.<$> ipAccessSettingsArn,
                            (JSON..=) "MaxConcurrentSessions"
                              Prelude.<$> maxConcurrentSessions,
                            (JSON..=) "NetworkSettingsArn" Prelude.<$> networkSettingsArn,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn,
                            (JSON..=) "UserAccessLoggingSettingsArn"
                              Prelude.<$> userAccessLoggingSettingsArn,
                            (JSON..=) "UserSettingsArn" Prelude.<$> userSettingsArn])}
instance JSON.ToJSON Portal where
  toJSON Portal {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalEncryptionContext"
                 Prelude.<$> additionalEncryptionContext,
               (JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
               (JSON..=) "BrowserSettingsArn" Prelude.<$> browserSettingsArn,
               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
               (JSON..=) "DataProtectionSettingsArn"
                 Prelude.<$> dataProtectionSettingsArn,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "IpAccessSettingsArn" Prelude.<$> ipAccessSettingsArn,
               (JSON..=) "MaxConcurrentSessions"
                 Prelude.<$> maxConcurrentSessions,
               (JSON..=) "NetworkSettingsArn" Prelude.<$> networkSettingsArn,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn,
               (JSON..=) "UserAccessLoggingSettingsArn"
                 Prelude.<$> userAccessLoggingSettingsArn,
               (JSON..=) "UserSettingsArn" Prelude.<$> userSettingsArn]))
instance Property "AdditionalEncryptionContext" Portal where
  type PropertyType "AdditionalEncryptionContext" Portal = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Portal {..}
    = Portal {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "AuthenticationType" Portal where
  type PropertyType "AuthenticationType" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {authenticationType = Prelude.pure newValue, ..}
instance Property "BrowserSettingsArn" Portal where
  type PropertyType "BrowserSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {browserSettingsArn = Prelude.pure newValue, ..}
instance Property "CustomerManagedKey" Portal where
  type PropertyType "CustomerManagedKey" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {customerManagedKey = Prelude.pure newValue, ..}
instance Property "DataProtectionSettingsArn" Portal where
  type PropertyType "DataProtectionSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {dataProtectionSettingsArn = Prelude.pure newValue, ..}
instance Property "DisplayName" Portal where
  type PropertyType "DisplayName" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {displayName = Prelude.pure newValue, ..}
instance Property "InstanceType" Portal where
  type PropertyType "InstanceType" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {instanceType = Prelude.pure newValue, ..}
instance Property "IpAccessSettingsArn" Portal where
  type PropertyType "IpAccessSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {ipAccessSettingsArn = Prelude.pure newValue, ..}
instance Property "MaxConcurrentSessions" Portal where
  type PropertyType "MaxConcurrentSessions" Portal = Value Prelude.Double
  set newValue Portal {..}
    = Portal {maxConcurrentSessions = Prelude.pure newValue, ..}
instance Property "NetworkSettingsArn" Portal where
  type PropertyType "NetworkSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {networkSettingsArn = Prelude.pure newValue, ..}
instance Property "Tags" Portal where
  type PropertyType "Tags" Portal = [Tag]
  set newValue Portal {..}
    = Portal {tags = Prelude.pure newValue, ..}
instance Property "TrustStoreArn" Portal where
  type PropertyType "TrustStoreArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {trustStoreArn = Prelude.pure newValue, ..}
instance Property "UserAccessLoggingSettingsArn" Portal where
  type PropertyType "UserAccessLoggingSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {userAccessLoggingSettingsArn = Prelude.pure newValue, ..}
instance Property "UserSettingsArn" Portal where
  type PropertyType "UserSettingsArn" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {userSettingsArn = Prelude.pure newValue, ..}