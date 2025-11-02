module Stratosphere.B2BI.Capability.X12DetailsProperty (
        X12DetailsProperty(..), mkX12DetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12DetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-capability-x12details.html>
    X12DetailsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-capability-x12details.html#cfn-b2bi-capability-x12details-transactionset>
                        transactionSet :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-capability-x12details.html#cfn-b2bi-capability-x12details-version>
                        version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12DetailsProperty :: X12DetailsProperty
mkX12DetailsProperty
  = X12DetailsProperty
      {haddock_workaround_ = (), transactionSet = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties X12DetailsProperty where
  toResourceProperties X12DetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability.X12Details",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TransactionSet" Prelude.<$> transactionSet,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON X12DetailsProperty where
  toJSON X12DetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TransactionSet" Prelude.<$> transactionSet,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "TransactionSet" X12DetailsProperty where
  type PropertyType "TransactionSet" X12DetailsProperty = Value Prelude.Text
  set newValue X12DetailsProperty {..}
    = X12DetailsProperty {transactionSet = Prelude.pure newValue, ..}
instance Property "Version" X12DetailsProperty where
  type PropertyType "Version" X12DetailsProperty = Value Prelude.Text
  set newValue X12DetailsProperty {..}
    = X12DetailsProperty {version = Prelude.pure newValue, ..}