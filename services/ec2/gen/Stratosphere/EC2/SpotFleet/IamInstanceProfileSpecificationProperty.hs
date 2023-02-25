module Stratosphere.EC2.SpotFleet.IamInstanceProfileSpecificationProperty (
        IamInstanceProfileSpecificationProperty(..),
        mkIamInstanceProfileSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamInstanceProfileSpecificationProperty
  = IamInstanceProfileSpecificationProperty {arn :: (Prelude.Maybe (Value Prelude.Text))}
mkIamInstanceProfileSpecificationProperty ::
  IamInstanceProfileSpecificationProperty
mkIamInstanceProfileSpecificationProperty
  = IamInstanceProfileSpecificationProperty {arn = Prelude.Nothing}
instance ToResourceProperties IamInstanceProfileSpecificationProperty where
  toResourceProperties IamInstanceProfileSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.IamInstanceProfileSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON IamInstanceProfileSpecificationProperty where
  toJSON IamInstanceProfileSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" IamInstanceProfileSpecificationProperty where
  type PropertyType "Arn" IamInstanceProfileSpecificationProperty = Value Prelude.Text
  set newValue IamInstanceProfileSpecificationProperty {}
    = IamInstanceProfileSpecificationProperty
        {arn = Prelude.pure newValue, ..}