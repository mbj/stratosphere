module Stratosphere.EC2.ClientVpnEndpoint.ConnectionLogOptionsProperty (
        ConnectionLogOptionsProperty(..), mkConnectionLogOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionLogOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html>
    ConnectionLogOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchloggroup>
                                  cloudwatchLogGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchlogstream>
                                  cloudwatchLogStream :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-enabled>
                                  enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionLogOptionsProperty ::
  Value Prelude.Bool -> ConnectionLogOptionsProperty
mkConnectionLogOptionsProperty enabled
  = ConnectionLogOptionsProperty
      {haddock_workaround_ = (), enabled = enabled,
       cloudwatchLogGroup = Prelude.Nothing,
       cloudwatchLogStream = Prelude.Nothing}
instance ToResourceProperties ConnectionLogOptionsProperty where
  toResourceProperties ConnectionLogOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ConnectionLogOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudwatchLogGroup" Prelude.<$> cloudwatchLogGroup,
                               (JSON..=) "CloudwatchLogStream" Prelude.<$> cloudwatchLogStream]))}
instance JSON.ToJSON ConnectionLogOptionsProperty where
  toJSON ConnectionLogOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "CloudwatchLogGroup" Prelude.<$> cloudwatchLogGroup,
                  (JSON..=) "CloudwatchLogStream" Prelude.<$> cloudwatchLogStream])))
instance Property "CloudwatchLogGroup" ConnectionLogOptionsProperty where
  type PropertyType "CloudwatchLogGroup" ConnectionLogOptionsProperty = Value Prelude.Text
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty
        {cloudwatchLogGroup = Prelude.pure newValue, ..}
instance Property "CloudwatchLogStream" ConnectionLogOptionsProperty where
  type PropertyType "CloudwatchLogStream" ConnectionLogOptionsProperty = Value Prelude.Text
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty
        {cloudwatchLogStream = Prelude.pure newValue, ..}
instance Property "Enabled" ConnectionLogOptionsProperty where
  type PropertyType "Enabled" ConnectionLogOptionsProperty = Value Prelude.Bool
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty {enabled = newValue, ..}