module Stratosphere.MediaLive.Channel.MediaPackageOutputSettingsProperty (
        MediaPackageOutputSettingsProperty(..),
        mkMediaPackageOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MediaPackageOutputSettingsProperty
  = MediaPackageOutputSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageOutputSettingsProperty ::
  MediaPackageOutputSettingsProperty
mkMediaPackageOutputSettingsProperty
  = MediaPackageOutputSettingsProperty {}
instance ToResourceProperties MediaPackageOutputSettingsProperty where
  toResourceProperties MediaPackageOutputSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageOutputSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON MediaPackageOutputSettingsProperty where
  toJSON MediaPackageOutputSettingsProperty {} = JSON.object []