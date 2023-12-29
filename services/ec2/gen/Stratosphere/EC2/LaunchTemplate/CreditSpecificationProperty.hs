module Stratosphere.EC2.LaunchTemplate.CreditSpecificationProperty (
        CreditSpecificationProperty(..), mkCreditSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreditSpecificationProperty
  = CreditSpecificationProperty {cpuCredits :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreditSpecificationProperty :: CreditSpecificationProperty
mkCreditSpecificationProperty
  = CreditSpecificationProperty {cpuCredits = Prelude.Nothing}
instance ToResourceProperties CreditSpecificationProperty where
  toResourceProperties CreditSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.CreditSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CpuCredits" Prelude.<$> cpuCredits])}
instance JSON.ToJSON CreditSpecificationProperty where
  toJSON CreditSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CpuCredits" Prelude.<$> cpuCredits]))
instance Property "CpuCredits" CreditSpecificationProperty where
  type PropertyType "CpuCredits" CreditSpecificationProperty = Value Prelude.Text
  set newValue CreditSpecificationProperty {}
    = CreditSpecificationProperty
        {cpuCredits = Prelude.pure newValue, ..}