module Stratosphere.SageMaker.UserProfile.UserSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserSettingsProperty :: Prelude.Type
instance ToResourceProperties UserSettingsProperty
instance JSON.ToJSON UserSettingsProperty