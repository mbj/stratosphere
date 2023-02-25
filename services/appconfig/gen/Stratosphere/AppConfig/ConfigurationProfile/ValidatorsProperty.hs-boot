module Stratosphere.AppConfig.ConfigurationProfile.ValidatorsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ValidatorsProperty :: Prelude.Type
instance ToResourceProperties ValidatorsProperty
instance JSON.ToJSON ValidatorsProperty