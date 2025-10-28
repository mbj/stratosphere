module Stratosphere.MediaTailor.PlaybackConfiguration.DashConfigurationProperty (
        DashConfigurationProperty(..), mkDashConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-dashconfiguration.html>
    DashConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-dashconfiguration.html#cfn-mediatailor-playbackconfiguration-dashconfiguration-manifestendpointprefix>
                               manifestEndpointPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-dashconfiguration.html#cfn-mediatailor-playbackconfiguration-dashconfiguration-mpdlocation>
                               mpdLocation :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-dashconfiguration.html#cfn-mediatailor-playbackconfiguration-dashconfiguration-originmanifesttype>
                               originManifestType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashConfigurationProperty :: DashConfigurationProperty
mkDashConfigurationProperty
  = DashConfigurationProperty
      {haddock_workaround_ = (),
       manifestEndpointPrefix = Prelude.Nothing,
       mpdLocation = Prelude.Nothing,
       originManifestType = Prelude.Nothing}
instance ToResourceProperties DashConfigurationProperty where
  toResourceProperties DashConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.DashConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestEndpointPrefix"
                              Prelude.<$> manifestEndpointPrefix,
                            (JSON..=) "MpdLocation" Prelude.<$> mpdLocation,
                            (JSON..=) "OriginManifestType" Prelude.<$> originManifestType])}
instance JSON.ToJSON DashConfigurationProperty where
  toJSON DashConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestEndpointPrefix"
                 Prelude.<$> manifestEndpointPrefix,
               (JSON..=) "MpdLocation" Prelude.<$> mpdLocation,
               (JSON..=) "OriginManifestType" Prelude.<$> originManifestType]))
instance Property "ManifestEndpointPrefix" DashConfigurationProperty where
  type PropertyType "ManifestEndpointPrefix" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {manifestEndpointPrefix = Prelude.pure newValue, ..}
instance Property "MpdLocation" DashConfigurationProperty where
  type PropertyType "MpdLocation" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {mpdLocation = Prelude.pure newValue, ..}
instance Property "OriginManifestType" DashConfigurationProperty where
  type PropertyType "OriginManifestType" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {originManifestType = Prelude.pure newValue, ..}