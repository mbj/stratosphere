module Stratosphere.EC2.EC2Fleet.CapacityRebalanceProperty (
        CapacityRebalanceProperty(..), mkCapacityRebalanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityRebalanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html>
    CapacityRebalanceProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html#cfn-ec2-ec2fleet-capacityrebalance-replacementstrategy>
                               replacementStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html#cfn-ec2-ec2fleet-capacityrebalance-terminationdelay>
                               terminationDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityRebalanceProperty :: CapacityRebalanceProperty
mkCapacityRebalanceProperty
  = CapacityRebalanceProperty
      {haddock_workaround_ = (), replacementStrategy = Prelude.Nothing,
       terminationDelay = Prelude.Nothing}
instance ToResourceProperties CapacityRebalanceProperty where
  toResourceProperties CapacityRebalanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.CapacityRebalance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplacementStrategy" Prelude.<$> replacementStrategy,
                            (JSON..=) "TerminationDelay" Prelude.<$> terminationDelay])}
instance JSON.ToJSON CapacityRebalanceProperty where
  toJSON CapacityRebalanceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplacementStrategy" Prelude.<$> replacementStrategy,
               (JSON..=) "TerminationDelay" Prelude.<$> terminationDelay]))
instance Property "ReplacementStrategy" CapacityRebalanceProperty where
  type PropertyType "ReplacementStrategy" CapacityRebalanceProperty = Value Prelude.Text
  set newValue CapacityRebalanceProperty {..}
    = CapacityRebalanceProperty
        {replacementStrategy = Prelude.pure newValue, ..}
instance Property "TerminationDelay" CapacityRebalanceProperty where
  type PropertyType "TerminationDelay" CapacityRebalanceProperty = Value Prelude.Integer
  set newValue CapacityRebalanceProperty {..}
    = CapacityRebalanceProperty
        {terminationDelay = Prelude.pure newValue, ..}