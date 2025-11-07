module Stratosphere.PCS.Cluster.AccountingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccountingProperty :: Prelude.Type
instance ToResourceProperties AccountingProperty
instance Prelude.Eq AccountingProperty
instance Prelude.Show AccountingProperty
instance JSON.ToJSON AccountingProperty