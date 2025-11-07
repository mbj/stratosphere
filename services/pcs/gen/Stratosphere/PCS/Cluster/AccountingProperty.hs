module Stratosphere.PCS.Cluster.AccountingProperty (
        AccountingProperty(..), mkAccountingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-accounting.html>
    AccountingProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-accounting.html#cfn-pcs-cluster-accounting-defaultpurgetimeindays>
                        defaultPurgeTimeInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-accounting.html#cfn-pcs-cluster-accounting-mode>
                        mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountingProperty :: Value Prelude.Text -> AccountingProperty
mkAccountingProperty mode
  = AccountingProperty
      {haddock_workaround_ = (), mode = mode,
       defaultPurgeTimeInDays = Prelude.Nothing}
instance ToResourceProperties AccountingProperty where
  toResourceProperties AccountingProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.Accounting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultPurgeTimeInDays"
                                 Prelude.<$> defaultPurgeTimeInDays]))}
instance JSON.ToJSON AccountingProperty where
  toJSON AccountingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultPurgeTimeInDays"
                    Prelude.<$> defaultPurgeTimeInDays])))
instance Property "DefaultPurgeTimeInDays" AccountingProperty where
  type PropertyType "DefaultPurgeTimeInDays" AccountingProperty = Value Prelude.Integer
  set newValue AccountingProperty {..}
    = AccountingProperty
        {defaultPurgeTimeInDays = Prelude.pure newValue, ..}
instance Property "Mode" AccountingProperty where
  type PropertyType "Mode" AccountingProperty = Value Prelude.Text
  set newValue AccountingProperty {..}
    = AccountingProperty {mode = newValue, ..}