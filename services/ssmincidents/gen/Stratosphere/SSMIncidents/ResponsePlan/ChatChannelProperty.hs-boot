module Stratosphere.SSMIncidents.ResponsePlan.ChatChannelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ChatChannelProperty :: Prelude.Type
instance ToResourceProperties ChatChannelProperty
instance JSON.ToJSON ChatChannelProperty