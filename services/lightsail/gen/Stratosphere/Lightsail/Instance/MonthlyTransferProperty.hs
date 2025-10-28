module Stratosphere.Lightsail.Instance.MonthlyTransferProperty (
        MonthlyTransferProperty(..), mkMonthlyTransferProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonthlyTransferProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-monthlytransfer.html>
    MonthlyTransferProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-monthlytransfer.html#cfn-lightsail-instance-monthlytransfer-gbpermonthallocated>
                             gbPerMonthAllocated :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonthlyTransferProperty :: MonthlyTransferProperty
mkMonthlyTransferProperty
  = MonthlyTransferProperty
      {haddock_workaround_ = (), gbPerMonthAllocated = Prelude.Nothing}
instance ToResourceProperties MonthlyTransferProperty where
  toResourceProperties MonthlyTransferProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.MonthlyTransfer",
         supportsTags = Prelude.False,
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
  set newValue MonthlyTransferProperty {..}
    = MonthlyTransferProperty
        {gbPerMonthAllocated = Prelude.pure newValue, ..}