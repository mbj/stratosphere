module Stratosphere.SageMaker.Space.SpaceSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpaceSettingsProperty :: Prelude.Type
instance ToResourceProperties SpaceSettingsProperty
instance JSON.ToJSON SpaceSettingsProperty