module Stratosphere.CodePipeline.CustomActionType.SettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SettingsProperty :: Prelude.Type
instance ToResourceProperties SettingsProperty
instance Prelude.Eq SettingsProperty
instance Prelude.Show SettingsProperty
instance JSON.ToJSON SettingsProperty