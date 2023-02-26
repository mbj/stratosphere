module Stratosphere.NimbleStudio.LaunchProfile.VolumeConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VolumeConfigurationProperty :: Prelude.Type
instance ToResourceProperties VolumeConfigurationProperty
instance JSON.ToJSON VolumeConfigurationProperty