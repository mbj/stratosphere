module Stratosphere.IoTSiteWise.Portal (
        module Exports, Portal(..), mkPortal
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Portal.AlarmsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Portal.PortalTypeEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Portal
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html>
    Portal {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-alarms>
            alarms :: (Prelude.Maybe AlarmsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-notificationsenderemail>
            notificationSenderEmail :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portalauthmode>
            portalAuthMode :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portalcontactemail>
            portalContactEmail :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portaldescription>
            portalDescription :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portalname>
            portalName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portaltype>
            portalType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-portaltypeconfiguration>
            portalTypeConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text PortalTypeEntryProperty)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-rolearn>
            roleArn :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-portal.html#cfn-iotsitewise-portal-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortal ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Portal
mkPortal portalContactEmail portalName roleArn
  = Portal
      {haddock_workaround_ = (), portalContactEmail = portalContactEmail,
       portalName = portalName, roleArn = roleArn,
       alarms = Prelude.Nothing,
       notificationSenderEmail = Prelude.Nothing,
       portalAuthMode = Prelude.Nothing,
       portalDescription = Prelude.Nothing, portalType = Prelude.Nothing,
       portalTypeConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Portal where
  toResourceProperties Portal {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Portal", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortalContactEmail" JSON..= portalContactEmail,
                            "PortalName" JSON..= portalName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Alarms" Prelude.<$> alarms,
                               (JSON..=) "NotificationSenderEmail"
                                 Prelude.<$> notificationSenderEmail,
                               (JSON..=) "PortalAuthMode" Prelude.<$> portalAuthMode,
                               (JSON..=) "PortalDescription" Prelude.<$> portalDescription,
                               (JSON..=) "PortalType" Prelude.<$> portalType,
                               (JSON..=) "PortalTypeConfiguration"
                                 Prelude.<$> portalTypeConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Portal where
  toJSON Portal {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortalContactEmail" JSON..= portalContactEmail,
               "PortalName" JSON..= portalName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Alarms" Prelude.<$> alarms,
                  (JSON..=) "NotificationSenderEmail"
                    Prelude.<$> notificationSenderEmail,
                  (JSON..=) "PortalAuthMode" Prelude.<$> portalAuthMode,
                  (JSON..=) "PortalDescription" Prelude.<$> portalDescription,
                  (JSON..=) "PortalType" Prelude.<$> portalType,
                  (JSON..=) "PortalTypeConfiguration"
                    Prelude.<$> portalTypeConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Alarms" Portal where
  type PropertyType "Alarms" Portal = AlarmsProperty
  set newValue Portal {..}
    = Portal {alarms = Prelude.pure newValue, ..}
instance Property "NotificationSenderEmail" Portal where
  type PropertyType "NotificationSenderEmail" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {notificationSenderEmail = Prelude.pure newValue, ..}
instance Property "PortalAuthMode" Portal where
  type PropertyType "PortalAuthMode" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {portalAuthMode = Prelude.pure newValue, ..}
instance Property "PortalContactEmail" Portal where
  type PropertyType "PortalContactEmail" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {portalContactEmail = newValue, ..}
instance Property "PortalDescription" Portal where
  type PropertyType "PortalDescription" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {portalDescription = Prelude.pure newValue, ..}
instance Property "PortalName" Portal where
  type PropertyType "PortalName" Portal = Value Prelude.Text
  set newValue Portal {..} = Portal {portalName = newValue, ..}
instance Property "PortalType" Portal where
  type PropertyType "PortalType" Portal = Value Prelude.Text
  set newValue Portal {..}
    = Portal {portalType = Prelude.pure newValue, ..}
instance Property "PortalTypeConfiguration" Portal where
  type PropertyType "PortalTypeConfiguration" Portal = Prelude.Map Prelude.Text PortalTypeEntryProperty
  set newValue Portal {..}
    = Portal {portalTypeConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" Portal where
  type PropertyType "RoleArn" Portal = Value Prelude.Text
  set newValue Portal {..} = Portal {roleArn = newValue, ..}
instance Property "Tags" Portal where
  type PropertyType "Tags" Portal = [Tag]
  set newValue Portal {..}
    = Portal {tags = Prelude.pure newValue, ..}