module Stratosphere.B2BI.Partnership.X12ControlNumbersProperty (
        X12ControlNumbersProperty(..), mkX12ControlNumbersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12ControlNumbersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12controlnumbers.html>
    X12ControlNumbersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12controlnumbers.html#cfn-b2bi-partnership-x12controlnumbers-startingfunctionalgroupcontrolnumber>
                               startingFunctionalGroupControlNumber :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12controlnumbers.html#cfn-b2bi-partnership-x12controlnumbers-startinginterchangecontrolnumber>
                               startingInterchangeControlNumber :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12controlnumbers.html#cfn-b2bi-partnership-x12controlnumbers-startingtransactionsetcontrolnumber>
                               startingTransactionSetControlNumber :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12ControlNumbersProperty :: X12ControlNumbersProperty
mkX12ControlNumbersProperty
  = X12ControlNumbersProperty
      {haddock_workaround_ = (),
       startingFunctionalGroupControlNumber = Prelude.Nothing,
       startingInterchangeControlNumber = Prelude.Nothing,
       startingTransactionSetControlNumber = Prelude.Nothing}
instance ToResourceProperties X12ControlNumbersProperty where
  toResourceProperties X12ControlNumbersProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12ControlNumbers",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StartingFunctionalGroupControlNumber"
                              Prelude.<$> startingFunctionalGroupControlNumber,
                            (JSON..=) "StartingInterchangeControlNumber"
                              Prelude.<$> startingInterchangeControlNumber,
                            (JSON..=) "StartingTransactionSetControlNumber"
                              Prelude.<$> startingTransactionSetControlNumber])}
instance JSON.ToJSON X12ControlNumbersProperty where
  toJSON X12ControlNumbersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StartingFunctionalGroupControlNumber"
                 Prelude.<$> startingFunctionalGroupControlNumber,
               (JSON..=) "StartingInterchangeControlNumber"
                 Prelude.<$> startingInterchangeControlNumber,
               (JSON..=) "StartingTransactionSetControlNumber"
                 Prelude.<$> startingTransactionSetControlNumber]))
instance Property "StartingFunctionalGroupControlNumber" X12ControlNumbersProperty where
  type PropertyType "StartingFunctionalGroupControlNumber" X12ControlNumbersProperty = Value Prelude.Double
  set newValue X12ControlNumbersProperty {..}
    = X12ControlNumbersProperty
        {startingFunctionalGroupControlNumber = Prelude.pure newValue, ..}
instance Property "StartingInterchangeControlNumber" X12ControlNumbersProperty where
  type PropertyType "StartingInterchangeControlNumber" X12ControlNumbersProperty = Value Prelude.Double
  set newValue X12ControlNumbersProperty {..}
    = X12ControlNumbersProperty
        {startingInterchangeControlNumber = Prelude.pure newValue, ..}
instance Property "StartingTransactionSetControlNumber" X12ControlNumbersProperty where
  type PropertyType "StartingTransactionSetControlNumber" X12ControlNumbersProperty = Value Prelude.Double
  set newValue X12ControlNumbersProperty {..}
    = X12ControlNumbersProperty
        {startingTransactionSetControlNumber = Prelude.pure newValue, ..}