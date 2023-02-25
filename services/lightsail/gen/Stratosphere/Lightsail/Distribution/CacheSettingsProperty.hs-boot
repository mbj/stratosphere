module Stratosphere.Lightsail.Distribution.CacheSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CacheSettingsProperty :: Prelude.Type
instance ToResourceProperties CacheSettingsProperty
instance JSON.ToJSON CacheSettingsProperty