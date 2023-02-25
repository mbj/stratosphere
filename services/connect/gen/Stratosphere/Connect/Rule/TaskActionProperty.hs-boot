module Stratosphere.Connect.Rule.TaskActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaskActionProperty :: Prelude.Type
instance ToResourceProperties TaskActionProperty
instance JSON.ToJSON TaskActionProperty