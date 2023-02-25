module Stratosphere.DirectoryService.SimpleAD.VpcSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcSettingsProperty :: Prelude.Type
instance ToResourceProperties VpcSettingsProperty
instance JSON.ToJSON VpcSettingsProperty