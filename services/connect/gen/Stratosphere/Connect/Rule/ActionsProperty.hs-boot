module Stratosphere.Connect.Rule.ActionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActionsProperty :: Prelude.Type
instance ToResourceProperties ActionsProperty
instance JSON.ToJSON ActionsProperty