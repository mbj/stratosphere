module Stratosphere.ApplicationSignals.ServiceLevelObjective.SliProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SliProperty :: Prelude.Type
instance ToResourceProperties SliProperty
instance Prelude.Eq SliProperty
instance Prelude.Show SliProperty
instance JSON.ToJSON SliProperty