module Stratosphere.GroundStation.Config.DecodeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DecodeConfigProperty :: Prelude.Type
instance ToResourceProperties DecodeConfigProperty
instance Prelude.Eq DecodeConfigProperty
instance Prelude.Show DecodeConfigProperty
instance JSON.ToJSON DecodeConfigProperty