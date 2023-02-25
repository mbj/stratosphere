module Stratosphere.Config.RemediationConfiguration.SsmControlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SsmControlsProperty :: Prelude.Type
instance ToResourceProperties SsmControlsProperty
instance JSON.ToJSON SsmControlsProperty