module Stratosphere.EC2.LaunchTemplate.SpotOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpotOptionsProperty :: Prelude.Type
instance ToResourceProperties SpotOptionsProperty
instance Prelude.Eq SpotOptionsProperty
instance Prelude.Show SpotOptionsProperty
instance JSON.ToJSON SpotOptionsProperty