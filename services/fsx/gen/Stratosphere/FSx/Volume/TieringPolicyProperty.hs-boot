module Stratosphere.FSx.Volume.TieringPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TieringPolicyProperty :: Prelude.Type
instance ToResourceProperties TieringPolicyProperty
instance Prelude.Eq TieringPolicyProperty
instance Prelude.Show TieringPolicyProperty
instance JSON.ToJSON TieringPolicyProperty