module Stratosphere.CustomerProfiles.Integration.TriggerConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TriggerConfigProperty :: Prelude.Type
instance ToResourceProperties TriggerConfigProperty
instance JSON.ToJSON TriggerConfigProperty