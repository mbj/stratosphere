module Stratosphere.Cassandra.Table.BillingModeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BillingModeProperty :: Prelude.Type
instance ToResourceProperties BillingModeProperty
instance Prelude.Eq BillingModeProperty
instance Prelude.Show BillingModeProperty
instance JSON.ToJSON BillingModeProperty