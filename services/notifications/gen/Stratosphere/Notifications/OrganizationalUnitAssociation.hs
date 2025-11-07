module Stratosphere.Notifications.OrganizationalUnitAssociation (
        OrganizationalUnitAssociation(..), mkOrganizationalUnitAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationalUnitAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-organizationalunitassociation.html>
    OrganizationalUnitAssociation {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-organizationalunitassociation.html#cfn-notifications-organizationalunitassociation-notificationconfigurationarn>
                                   notificationConfigurationArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-organizationalunitassociation.html#cfn-notifications-organizationalunitassociation-organizationalunitid>
                                   organizationalUnitId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationalUnitAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> OrganizationalUnitAssociation
mkOrganizationalUnitAssociation
  notificationConfigurationArn
  organizationalUnitId
  = OrganizationalUnitAssociation
      {haddock_workaround_ = (),
       notificationConfigurationArn = notificationConfigurationArn,
       organizationalUnitId = organizationalUnitId}
instance ToResourceProperties OrganizationalUnitAssociation where
  toResourceProperties OrganizationalUnitAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::OrganizationalUnitAssociation",
         supportsTags = Prelude.False,
         properties = ["NotificationConfigurationArn"
                         JSON..= notificationConfigurationArn,
                       "OrganizationalUnitId" JSON..= organizationalUnitId]}
instance JSON.ToJSON OrganizationalUnitAssociation where
  toJSON OrganizationalUnitAssociation {..}
    = JSON.object
        ["NotificationConfigurationArn"
           JSON..= notificationConfigurationArn,
         "OrganizationalUnitId" JSON..= organizationalUnitId]
instance Property "NotificationConfigurationArn" OrganizationalUnitAssociation where
  type PropertyType "NotificationConfigurationArn" OrganizationalUnitAssociation = Value Prelude.Text
  set newValue OrganizationalUnitAssociation {..}
    = OrganizationalUnitAssociation
        {notificationConfigurationArn = newValue, ..}
instance Property "OrganizationalUnitId" OrganizationalUnitAssociation where
  type PropertyType "OrganizationalUnitId" OrganizationalUnitAssociation = Value Prelude.Text
  set newValue OrganizationalUnitAssociation {..}
    = OrganizationalUnitAssociation
        {organizationalUnitId = newValue, ..}