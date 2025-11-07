module Stratosphere.XRay.TransactionSearchConfig (
        TransactionSearchConfig(..), mkTransactionSearchConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransactionSearchConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-transactionsearchconfig.html>
    TransactionSearchConfig {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-transactionsearchconfig.html#cfn-xray-transactionsearchconfig-indexingpercentage>
                             indexingPercentage :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransactionSearchConfig :: TransactionSearchConfig
mkTransactionSearchConfig
  = TransactionSearchConfig
      {haddock_workaround_ = (), indexingPercentage = Prelude.Nothing}
instance ToResourceProperties TransactionSearchConfig where
  toResourceProperties TransactionSearchConfig {..}
    = ResourceProperties
        {awsType = "AWS::XRay::TransactionSearchConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IndexingPercentage" Prelude.<$> indexingPercentage])}
instance JSON.ToJSON TransactionSearchConfig where
  toJSON TransactionSearchConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IndexingPercentage" Prelude.<$> indexingPercentage]))
instance Property "IndexingPercentage" TransactionSearchConfig where
  type PropertyType "IndexingPercentage" TransactionSearchConfig = Value Prelude.Double
  set newValue TransactionSearchConfig {..}
    = TransactionSearchConfig
        {indexingPercentage = Prelude.pure newValue, ..}