module Stratosphere.CleanRooms.AnalysisTemplate.HashProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HashProperty :: Prelude.Type
instance ToResourceProperties HashProperty
instance Prelude.Eq HashProperty
instance Prelude.Show HashProperty
instance JSON.ToJSON HashProperty