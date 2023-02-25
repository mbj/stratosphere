module Stratosphere.Backup.Framework.ControlScopeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ControlScopeProperty :: Prelude.Type
instance ToResourceProperties ControlScopeProperty
instance JSON.ToJSON ControlScopeProperty