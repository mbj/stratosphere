module Stratosphere.EC2.VPNConnection.CloudwatchLogOptionsSpecificationProperty (
        CloudwatchLogOptionsSpecificationProperty(..),
        mkCloudwatchLogOptionsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchLogOptionsSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-cloudwatchlogoptionsspecification.html>
    CloudwatchLogOptionsSpecificationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-cloudwatchlogoptionsspecification.html#cfn-ec2-vpnconnection-cloudwatchlogoptionsspecification-logenabled>
                                               logEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-cloudwatchlogoptionsspecification.html#cfn-ec2-vpnconnection-cloudwatchlogoptionsspecification-loggrouparn>
                                               logGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-cloudwatchlogoptionsspecification.html#cfn-ec2-vpnconnection-cloudwatchlogoptionsspecification-logoutputformat>
                                               logOutputFormat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudwatchLogOptionsSpecificationProperty ::
  CloudwatchLogOptionsSpecificationProperty
mkCloudwatchLogOptionsSpecificationProperty
  = CloudwatchLogOptionsSpecificationProperty
      {haddock_workaround_ = (), logEnabled = Prelude.Nothing,
       logGroupArn = Prelude.Nothing, logOutputFormat = Prelude.Nothing}
instance ToResourceProperties CloudwatchLogOptionsSpecificationProperty where
  toResourceProperties CloudwatchLogOptionsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.CloudwatchLogOptionsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogEnabled" Prelude.<$> logEnabled,
                            (JSON..=) "LogGroupArn" Prelude.<$> logGroupArn,
                            (JSON..=) "LogOutputFormat" Prelude.<$> logOutputFormat])}
instance JSON.ToJSON CloudwatchLogOptionsSpecificationProperty where
  toJSON CloudwatchLogOptionsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogEnabled" Prelude.<$> logEnabled,
               (JSON..=) "LogGroupArn" Prelude.<$> logGroupArn,
               (JSON..=) "LogOutputFormat" Prelude.<$> logOutputFormat]))
instance Property "LogEnabled" CloudwatchLogOptionsSpecificationProperty where
  type PropertyType "LogEnabled" CloudwatchLogOptionsSpecificationProperty = Value Prelude.Bool
  set newValue CloudwatchLogOptionsSpecificationProperty {..}
    = CloudwatchLogOptionsSpecificationProperty
        {logEnabled = Prelude.pure newValue, ..}
instance Property "LogGroupArn" CloudwatchLogOptionsSpecificationProperty where
  type PropertyType "LogGroupArn" CloudwatchLogOptionsSpecificationProperty = Value Prelude.Text
  set newValue CloudwatchLogOptionsSpecificationProperty {..}
    = CloudwatchLogOptionsSpecificationProperty
        {logGroupArn = Prelude.pure newValue, ..}
instance Property "LogOutputFormat" CloudwatchLogOptionsSpecificationProperty where
  type PropertyType "LogOutputFormat" CloudwatchLogOptionsSpecificationProperty = Value Prelude.Text
  set newValue CloudwatchLogOptionsSpecificationProperty {..}
    = CloudwatchLogOptionsSpecificationProperty
        {logOutputFormat = Prelude.pure newValue, ..}