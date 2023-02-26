module Stratosphere.GameLift.GameSessionQueue.PriorityConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PriorityConfigurationProperty :: Prelude.Type
instance ToResourceProperties PriorityConfigurationProperty
instance JSON.ToJSON PriorityConfigurationProperty