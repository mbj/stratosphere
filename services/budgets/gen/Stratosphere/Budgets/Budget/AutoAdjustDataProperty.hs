module Stratosphere.Budgets.Budget.AutoAdjustDataProperty (
        module Exports, AutoAdjustDataProperty(..),
        mkAutoAdjustDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.Budget.HistoricalOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoAdjustDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-autoadjustdata.html>
    AutoAdjustDataProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-autoadjustdata.html#cfn-budgets-budget-autoadjustdata-autoadjusttype>
                            autoAdjustType :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-autoadjustdata.html#cfn-budgets-budget-autoadjustdata-historicaloptions>
                            historicalOptions :: (Prelude.Maybe HistoricalOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoAdjustDataProperty ::
  Value Prelude.Text -> AutoAdjustDataProperty
mkAutoAdjustDataProperty autoAdjustType
  = AutoAdjustDataProperty
      {haddock_workaround_ = (), autoAdjustType = autoAdjustType,
       historicalOptions = Prelude.Nothing}
instance ToResourceProperties AutoAdjustDataProperty where
  toResourceProperties AutoAdjustDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.AutoAdjustData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoAdjustType" JSON..= autoAdjustType]
                           (Prelude.catMaybes
                              [(JSON..=) "HistoricalOptions" Prelude.<$> historicalOptions]))}
instance JSON.ToJSON AutoAdjustDataProperty where
  toJSON AutoAdjustDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoAdjustType" JSON..= autoAdjustType]
              (Prelude.catMaybes
                 [(JSON..=) "HistoricalOptions" Prelude.<$> historicalOptions])))
instance Property "AutoAdjustType" AutoAdjustDataProperty where
  type PropertyType "AutoAdjustType" AutoAdjustDataProperty = Value Prelude.Text
  set newValue AutoAdjustDataProperty {..}
    = AutoAdjustDataProperty {autoAdjustType = newValue, ..}
instance Property "HistoricalOptions" AutoAdjustDataProperty where
  type PropertyType "HistoricalOptions" AutoAdjustDataProperty = HistoricalOptionsProperty
  set newValue AutoAdjustDataProperty {..}
    = AutoAdjustDataProperty
        {historicalOptions = Prelude.pure newValue, ..}