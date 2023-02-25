module Stratosphere.CE.AnomalySubscription.ResourceTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceTagProperty :: Prelude.Type
instance ToResourceProperties ResourceTagProperty
instance JSON.ToJSON ResourceTagProperty