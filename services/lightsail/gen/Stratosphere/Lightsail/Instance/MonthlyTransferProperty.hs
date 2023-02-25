module Stratosphere.Lightsail.Instance.MonthlyTransferProperty (
        MonthlyTransferProperty(..), mkMonthlyTransferProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonthlyTransferProperty
  = MonthlyTransferProperty {gbPerMonthAllocated :: (Prelude.Maybe (Value Prelude.Text))}
mkMonthlyTransferProperty :: MonthlyTransferProperty
mkMonthlyTransferProperty
  = MonthlyTransferProperty {gbPerMonthAllocated = Prelude.Nothing}
instance ToResourceProperties MonthlyTransferProperty where
  toResourceProperties MonthlyTransferProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.MonthlyTransfer",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GbPerMonthAllocated" Prelude.<$> gbPerMonthAllocated])}
instance JSON.ToJSON MonthlyTransferProperty where
  toJSON MonthlyTransferProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GbPerMonthAllocated" Prelude.<$> gbPerMonthAllocated]))
instance Property "GbPerMonthAllocated" MonthlyTransferProperty where
  type PropertyType "GbPerMonthAllocated" MonthlyTransferProperty = Value Prelude.Text
  set newValue MonthlyTransferProperty {}
    = MonthlyTransferProperty
        {gbPerMonthAllocated = Prelude.pure newValue, ..}