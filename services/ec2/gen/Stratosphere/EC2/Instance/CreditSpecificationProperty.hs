module Stratosphere.EC2.Instance.CreditSpecificationProperty (
        CreditSpecificationProperty(..), mkCreditSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreditSpecificationProperty
  = CreditSpecificationProperty {cPUCredits :: (Prelude.Maybe (Value Prelude.Text))}
mkCreditSpecificationProperty :: CreditSpecificationProperty
mkCreditSpecificationProperty
  = CreditSpecificationProperty {cPUCredits = Prelude.Nothing}
instance ToResourceProperties CreditSpecificationProperty where
  toResourceProperties CreditSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.CreditSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CPUCredits" Prelude.<$> cPUCredits])}
instance JSON.ToJSON CreditSpecificationProperty where
  toJSON CreditSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CPUCredits" Prelude.<$> cPUCredits]))
instance Property "CPUCredits" CreditSpecificationProperty where
  type PropertyType "CPUCredits" CreditSpecificationProperty = Value Prelude.Text
  set newValue CreditSpecificationProperty {}
    = CreditSpecificationProperty
        {cPUCredits = Prelude.pure newValue, ..}