module Stratosphere.QuickSight.Dashboard.LinkSharingConfigurationProperty (
        module Exports, LinkSharingConfigurationProperty(..),
        mkLinkSharingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ResourcePermissionProperty as Exports
import Stratosphere.ResourceProperties
data LinkSharingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-linksharingconfiguration.html>
    LinkSharingConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-linksharingconfiguration.html#cfn-quicksight-dashboard-linksharingconfiguration-permissions>
                                      permissions :: (Prelude.Maybe [ResourcePermissionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkSharingConfigurationProperty ::
  LinkSharingConfigurationProperty
mkLinkSharingConfigurationProperty
  = LinkSharingConfigurationProperty
      {haddock_workaround_ = (), permissions = Prelude.Nothing}
instance ToResourceProperties LinkSharingConfigurationProperty where
  toResourceProperties LinkSharingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LinkSharingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Permissions" Prelude.<$> permissions])}
instance JSON.ToJSON LinkSharingConfigurationProperty where
  toJSON LinkSharingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Permissions" Prelude.<$> permissions]))
instance Property "Permissions" LinkSharingConfigurationProperty where
  type PropertyType "Permissions" LinkSharingConfigurationProperty = [ResourcePermissionProperty]
  set newValue LinkSharingConfigurationProperty {..}
    = LinkSharingConfigurationProperty
        {permissions = Prelude.pure newValue, ..}