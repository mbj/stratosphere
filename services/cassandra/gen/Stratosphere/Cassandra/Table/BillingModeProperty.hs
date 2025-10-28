module Stratosphere.Cassandra.Table.BillingModeProperty (
        module Exports, BillingModeProperty(..), mkBillingModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ProvisionedThroughputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BillingModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html>
    BillingModeProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-mode>
                         mode :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-provisionedthroughput>
                         provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingModeProperty :: Value Prelude.Text -> BillingModeProperty
mkBillingModeProperty mode
  = BillingModeProperty
      {haddock_workaround_ = (), mode = mode,
       provisionedThroughput = Prelude.Nothing}
instance ToResourceProperties BillingModeProperty where
  toResourceProperties BillingModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.BillingMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "ProvisionedThroughput"
                                 Prelude.<$> provisionedThroughput]))}
instance JSON.ToJSON BillingModeProperty where
  toJSON BillingModeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "ProvisionedThroughput"
                    Prelude.<$> provisionedThroughput])))
instance Property "Mode" BillingModeProperty where
  type PropertyType "Mode" BillingModeProperty = Value Prelude.Text
  set newValue BillingModeProperty {..}
    = BillingModeProperty {mode = newValue, ..}
instance Property "ProvisionedThroughput" BillingModeProperty where
  type PropertyType "ProvisionedThroughput" BillingModeProperty = ProvisionedThroughputProperty
  set newValue BillingModeProperty {..}
    = BillingModeProperty
        {provisionedThroughput = Prelude.pure newValue, ..}