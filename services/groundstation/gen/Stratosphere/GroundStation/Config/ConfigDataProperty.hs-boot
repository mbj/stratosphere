module Stratosphere.GroundStation.Config.ConfigDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigDataProperty :: Prelude.Type
instance ToResourceProperties ConfigDataProperty
instance Prelude.Eq ConfigDataProperty
instance Prelude.Show ConfigDataProperty
instance JSON.ToJSON ConfigDataProperty