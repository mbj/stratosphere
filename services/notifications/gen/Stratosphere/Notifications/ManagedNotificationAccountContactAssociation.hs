module Stratosphere.Notifications.ManagedNotificationAccountContactAssociation (
        ManagedNotificationAccountContactAssociation(..),
        mkManagedNotificationAccountContactAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedNotificationAccountContactAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationaccountcontactassociation.html>
    ManagedNotificationAccountContactAssociation {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationaccountcontactassociation.html#cfn-notifications-managednotificationaccountcontactassociation-contactidentifier>
                                                  contactIdentifier :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationaccountcontactassociation.html#cfn-notifications-managednotificationaccountcontactassociation-managednotificationconfigurationarn>
                                                  managedNotificationConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedNotificationAccountContactAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ManagedNotificationAccountContactAssociation
mkManagedNotificationAccountContactAssociation
  contactIdentifier
  managedNotificationConfigurationArn
  = ManagedNotificationAccountContactAssociation
      {haddock_workaround_ = (), contactIdentifier = contactIdentifier,
       managedNotificationConfigurationArn = managedNotificationConfigurationArn}
instance ToResourceProperties ManagedNotificationAccountContactAssociation where
  toResourceProperties
    ManagedNotificationAccountContactAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::ManagedNotificationAccountContactAssociation",
         supportsTags = Prelude.False,
         properties = ["ContactIdentifier" JSON..= contactIdentifier,
                       "ManagedNotificationConfigurationArn"
                         JSON..= managedNotificationConfigurationArn]}
instance JSON.ToJSON ManagedNotificationAccountContactAssociation where
  toJSON ManagedNotificationAccountContactAssociation {..}
    = JSON.object
        ["ContactIdentifier" JSON..= contactIdentifier,
         "ManagedNotificationConfigurationArn"
           JSON..= managedNotificationConfigurationArn]
instance Property "ContactIdentifier" ManagedNotificationAccountContactAssociation where
  type PropertyType "ContactIdentifier" ManagedNotificationAccountContactAssociation = Value Prelude.Text
  set newValue ManagedNotificationAccountContactAssociation {..}
    = ManagedNotificationAccountContactAssociation
        {contactIdentifier = newValue, ..}
instance Property "ManagedNotificationConfigurationArn" ManagedNotificationAccountContactAssociation where
  type PropertyType "ManagedNotificationConfigurationArn" ManagedNotificationAccountContactAssociation = Value Prelude.Text
  set newValue ManagedNotificationAccountContactAssociation {..}
    = ManagedNotificationAccountContactAssociation
        {managedNotificationConfigurationArn = newValue, ..}