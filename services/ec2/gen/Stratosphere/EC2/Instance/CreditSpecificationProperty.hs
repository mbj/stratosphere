module Stratosphere.EC2.Instance.CreditSpecificationProperty (
        CreditSpecificationProperty(..), mkCreditSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreditSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html>
    CreditSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html#cfn-ec2-instance-creditspecification-cpucredits>
                                 cPUCredits :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreditSpecificationProperty :: CreditSpecificationProperty
mkCreditSpecificationProperty
  = CreditSpecificationProperty
      {haddock_workaround_ = (), cPUCredits = Prelude.Nothing}
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
  set newValue CreditSpecificationProperty {..}
    = CreditSpecificationProperty
        {cPUCredits = Prelude.pure newValue, ..}