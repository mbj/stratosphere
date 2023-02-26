module Stratosphere.Events.Rule.RunCommandTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RunCommandTargetProperty :: Prelude.Type
instance ToResourceProperties RunCommandTargetProperty
instance JSON.ToJSON RunCommandTargetProperty