module Stratosphere.EC2.Subnet.BlockPublicAccessStatesProperty (
        BlockPublicAccessStatesProperty(..),
        mkBlockPublicAccessStatesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockPublicAccessStatesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-blockpublicaccessstates.html>
    BlockPublicAccessStatesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-blockpublicaccessstates.html#cfn-ec2-subnet-blockpublicaccessstates-internetgatewayblockmode>
                                     internetGatewayBlockMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockPublicAccessStatesProperty ::
  BlockPublicAccessStatesProperty
mkBlockPublicAccessStatesProperty
  = BlockPublicAccessStatesProperty
      {haddock_workaround_ = (),
       internetGatewayBlockMode = Prelude.Nothing}
instance ToResourceProperties BlockPublicAccessStatesProperty where
  toResourceProperties BlockPublicAccessStatesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Subnet.BlockPublicAccessStates",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InternetGatewayBlockMode"
                              Prelude.<$> internetGatewayBlockMode])}
instance JSON.ToJSON BlockPublicAccessStatesProperty where
  toJSON BlockPublicAccessStatesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InternetGatewayBlockMode"
                 Prelude.<$> internetGatewayBlockMode]))
instance Property "InternetGatewayBlockMode" BlockPublicAccessStatesProperty where
  type PropertyType "InternetGatewayBlockMode" BlockPublicAccessStatesProperty = Value Prelude.Text
  set newValue BlockPublicAccessStatesProperty {..}
    = BlockPublicAccessStatesProperty
        {internetGatewayBlockMode = Prelude.pure newValue, ..}