module Stratosphere.RTBFabric.Link.LinkLogSettingsProperty (
        module Exports, LinkLogSettingsProperty(..),
        mkLinkLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.ApplicationLogsProperty as Exports
import Stratosphere.ResourceProperties
data LinkLogSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linklogsettings.html>
    LinkLogSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linklogsettings.html#cfn-rtbfabric-link-linklogsettings-applicationlogs>
                             applicationLogs :: ApplicationLogsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkLogSettingsProperty ::
  ApplicationLogsProperty -> LinkLogSettingsProperty
mkLinkLogSettingsProperty applicationLogs
  = LinkLogSettingsProperty
      {haddock_workaround_ = (), applicationLogs = applicationLogs}
instance ToResourceProperties LinkLogSettingsProperty where
  toResourceProperties LinkLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.LinkLogSettings",
         supportsTags = Prelude.False,
         properties = ["ApplicationLogs" JSON..= applicationLogs]}
instance JSON.ToJSON LinkLogSettingsProperty where
  toJSON LinkLogSettingsProperty {..}
    = JSON.object ["ApplicationLogs" JSON..= applicationLogs]
instance Property "ApplicationLogs" LinkLogSettingsProperty where
  type PropertyType "ApplicationLogs" LinkLogSettingsProperty = ApplicationLogsProperty
  set newValue LinkLogSettingsProperty {..}
    = LinkLogSettingsProperty {applicationLogs = newValue, ..}