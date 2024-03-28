module Stratosphere.EntityResolution.MatchingWorkflow.InputSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputSourceProperty :: Prelude.Type
instance ToResourceProperties InputSourceProperty
instance Prelude.Eq InputSourceProperty
instance Prelude.Show InputSourceProperty
instance JSON.ToJSON InputSourceProperty