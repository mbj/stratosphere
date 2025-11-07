module Stratosphere.MPA.ApprovalTeam.ApproverProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApproverProperty :: Prelude.Type
instance ToResourceProperties ApproverProperty
instance Prelude.Eq ApproverProperty
instance Prelude.Show ApproverProperty
instance JSON.ToJSON ApproverProperty