module Stratosphere.Billing.BillingView.DimensionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DimensionsProperty :: Prelude.Type
instance ToResourceProperties DimensionsProperty
instance Prelude.Eq DimensionsProperty
instance Prelude.Show DimensionsProperty
instance JSON.ToJSON DimensionsProperty