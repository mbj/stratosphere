module Stratosphere.RolesAnywhere.TrustAnchor (
        module Exports, TrustAnchor(..), mkTrustAnchor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RolesAnywhere.TrustAnchor.NotificationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.RolesAnywhere.TrustAnchor.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrustAnchor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html>
    TrustAnchor {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html#cfn-rolesanywhere-trustanchor-enabled>
                 enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html#cfn-rolesanywhere-trustanchor-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html#cfn-rolesanywhere-trustanchor-notificationsettings>
                 notificationSettings :: (Prelude.Maybe [NotificationSettingProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html#cfn-rolesanywhere-trustanchor-source>
                 source :: SourceProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-trustanchor.html#cfn-rolesanywhere-trustanchor-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustAnchor ::
  Value Prelude.Text -> SourceProperty -> TrustAnchor
mkTrustAnchor name source
  = TrustAnchor
      {haddock_workaround_ = (), name = name, source = source,
       enabled = Prelude.Nothing, notificationSettings = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TrustAnchor where
  toResourceProperties TrustAnchor {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "NotificationSettings" Prelude.<$> notificationSettings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrustAnchor where
  toJSON TrustAnchor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "NotificationSettings" Prelude.<$> notificationSettings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" TrustAnchor where
  type PropertyType "Enabled" TrustAnchor = Value Prelude.Bool
  set newValue TrustAnchor {..}
    = TrustAnchor {enabled = Prelude.pure newValue, ..}
instance Property "Name" TrustAnchor where
  type PropertyType "Name" TrustAnchor = Value Prelude.Text
  set newValue TrustAnchor {..} = TrustAnchor {name = newValue, ..}
instance Property "NotificationSettings" TrustAnchor where
  type PropertyType "NotificationSettings" TrustAnchor = [NotificationSettingProperty]
  set newValue TrustAnchor {..}
    = TrustAnchor {notificationSettings = Prelude.pure newValue, ..}
instance Property "Source" TrustAnchor where
  type PropertyType "Source" TrustAnchor = SourceProperty
  set newValue TrustAnchor {..} = TrustAnchor {source = newValue, ..}
instance Property "Tags" TrustAnchor where
  type PropertyType "Tags" TrustAnchor = [Tag]
  set newValue TrustAnchor {..}
    = TrustAnchor {tags = Prelude.pure newValue, ..}