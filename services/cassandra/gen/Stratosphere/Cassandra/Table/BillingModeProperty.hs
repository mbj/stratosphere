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
  = BillingModeProperty {mode :: (Value Prelude.Text),
                         provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty)}
mkBillingModeProperty :: Value Prelude.Text -> BillingModeProperty
mkBillingModeProperty mode
  = BillingModeProperty
      {mode = mode, provisionedThroughput = Prelude.Nothing}
instance ToResourceProperties BillingModeProperty where
  toResourceProperties BillingModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.BillingMode",
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