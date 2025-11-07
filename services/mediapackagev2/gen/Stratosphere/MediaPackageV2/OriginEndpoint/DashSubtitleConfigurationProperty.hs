module Stratosphere.MediaPackageV2.OriginEndpoint.DashSubtitleConfigurationProperty (
        module Exports, DashSubtitleConfigurationProperty(..),
        mkDashSubtitleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.DashTtmlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DashSubtitleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashsubtitleconfiguration.html>
    DashSubtitleConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashsubtitleconfiguration.html#cfn-mediapackagev2-originendpoint-dashsubtitleconfiguration-ttmlconfiguration>
                                       ttmlConfiguration :: (Prelude.Maybe DashTtmlConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashSubtitleConfigurationProperty ::
  DashSubtitleConfigurationProperty
mkDashSubtitleConfigurationProperty
  = DashSubtitleConfigurationProperty
      {haddock_workaround_ = (), ttmlConfiguration = Prelude.Nothing}
instance ToResourceProperties DashSubtitleConfigurationProperty where
  toResourceProperties DashSubtitleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashSubtitleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TtmlConfiguration" Prelude.<$> ttmlConfiguration])}
instance JSON.ToJSON DashSubtitleConfigurationProperty where
  toJSON DashSubtitleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TtmlConfiguration" Prelude.<$> ttmlConfiguration]))
instance Property "TtmlConfiguration" DashSubtitleConfigurationProperty where
  type PropertyType "TtmlConfiguration" DashSubtitleConfigurationProperty = DashTtmlConfigurationProperty
  set newValue DashSubtitleConfigurationProperty {..}
    = DashSubtitleConfigurationProperty
        {ttmlConfiguration = Prelude.pure newValue, ..}