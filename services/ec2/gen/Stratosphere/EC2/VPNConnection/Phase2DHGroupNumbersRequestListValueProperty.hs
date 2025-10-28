module Stratosphere.EC2.VPNConnection.Phase2DHGroupNumbersRequestListValueProperty (
        Phase2DHGroupNumbersRequestListValueProperty(..),
        mkPhase2DHGroupNumbersRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase2DHGroupNumbersRequestListValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase2dhgroupnumbersrequestlistvalue.html>
    Phase2DHGroupNumbersRequestListValueProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase2dhgroupnumbersrequestlistvalue.html#cfn-ec2-vpnconnection-phase2dhgroupnumbersrequestlistvalue-value>
                                                  value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase2DHGroupNumbersRequestListValueProperty ::
  Phase2DHGroupNumbersRequestListValueProperty
mkPhase2DHGroupNumbersRequestListValueProperty
  = Phase2DHGroupNumbersRequestListValueProperty
      {haddock_workaround_ = (), value = Prelude.Nothing}
instance ToResourceProperties Phase2DHGroupNumbersRequestListValueProperty where
  toResourceProperties
    Phase2DHGroupNumbersRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase2DHGroupNumbersRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase2DHGroupNumbersRequestListValueProperty where
  toJSON Phase2DHGroupNumbersRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase2DHGroupNumbersRequestListValueProperty where
  type PropertyType "Value" Phase2DHGroupNumbersRequestListValueProperty = Value Prelude.Integer
  set newValue Phase2DHGroupNumbersRequestListValueProperty {..}
    = Phase2DHGroupNumbersRequestListValueProperty
        {value = Prelude.pure newValue, ..}