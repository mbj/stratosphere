module Stratosphere.CloudTrail.Trail.EventSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventSelectorProperty :: Prelude.Type
instance ToResourceProperties EventSelectorProperty
instance Prelude.Eq EventSelectorProperty
instance Prelude.Show EventSelectorProperty
instance JSON.ToJSON EventSelectorProperty