module Stratosphere.GameLift.Fleet.RuntimeConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuntimeConfigurationProperty :: Prelude.Type
instance ToResourceProperties RuntimeConfigurationProperty
instance Prelude.Eq RuntimeConfigurationProperty
instance Prelude.Show RuntimeConfigurationProperty
instance JSON.ToJSON RuntimeConfigurationProperty