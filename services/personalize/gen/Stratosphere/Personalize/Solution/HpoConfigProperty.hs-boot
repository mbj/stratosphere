module Stratosphere.Personalize.Solution.HpoConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HpoConfigProperty :: Prelude.Type
instance ToResourceProperties HpoConfigProperty
instance Prelude.Eq HpoConfigProperty
instance Prelude.Show HpoConfigProperty
instance JSON.ToJSON HpoConfigProperty