module Stratosphere.EC2.VPNConnection.Phase1DHGroupNumbersRequestListValueProperty (
        Phase1DHGroupNumbersRequestListValueProperty(..),
        mkPhase1DHGroupNumbersRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase1DHGroupNumbersRequestListValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase1dhgroupnumbersrequestlistvalue.html>
    Phase1DHGroupNumbersRequestListValueProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase1dhgroupnumbersrequestlistvalue.html#cfn-ec2-vpnconnection-phase1dhgroupnumbersrequestlistvalue-value>
                                                  value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase1DHGroupNumbersRequestListValueProperty ::
  Phase1DHGroupNumbersRequestListValueProperty
mkPhase1DHGroupNumbersRequestListValueProperty
  = Phase1DHGroupNumbersRequestListValueProperty
      {haddock_workaround_ = (), value = Prelude.Nothing}
instance ToResourceProperties Phase1DHGroupNumbersRequestListValueProperty where
  toResourceProperties
    Phase1DHGroupNumbersRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase1DHGroupNumbersRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase1DHGroupNumbersRequestListValueProperty where
  toJSON Phase1DHGroupNumbersRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase1DHGroupNumbersRequestListValueProperty where
  type PropertyType "Value" Phase1DHGroupNumbersRequestListValueProperty = Value Prelude.Integer
  set newValue Phase1DHGroupNumbersRequestListValueProperty {..}
    = Phase1DHGroupNumbersRequestListValueProperty
        {value = Prelude.pure newValue, ..}