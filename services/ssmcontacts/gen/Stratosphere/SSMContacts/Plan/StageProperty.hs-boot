module Stratosphere.SSMContacts.Plan.StageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StageProperty :: Prelude.Type
instance ToResourceProperties StageProperty
instance Prelude.Eq StageProperty
instance Prelude.Show StageProperty
instance JSON.ToJSON StageProperty