module Stratosphere.EC2.LaunchTemplate.IamInstanceProfileProperty (
        IamInstanceProfileProperty(..), mkIamInstanceProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamInstanceProfileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-iaminstanceprofile.html>
    IamInstanceProfileProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-iaminstanceprofile.html#cfn-ec2-launchtemplate-iaminstanceprofile-arn>
                                arn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-iaminstanceprofile.html#cfn-ec2-launchtemplate-iaminstanceprofile-name>
                                name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamInstanceProfileProperty :: IamInstanceProfileProperty
mkIamInstanceProfileProperty
  = IamInstanceProfileProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties IamInstanceProfileProperty where
  toResourceProperties IamInstanceProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.IamInstanceProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON IamInstanceProfileProperty where
  toJSON IamInstanceProfileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Arn" IamInstanceProfileProperty where
  type PropertyType "Arn" IamInstanceProfileProperty = Value Prelude.Text
  set newValue IamInstanceProfileProperty {..}
    = IamInstanceProfileProperty {arn = Prelude.pure newValue, ..}
instance Property "Name" IamInstanceProfileProperty where
  type PropertyType "Name" IamInstanceProfileProperty = Value Prelude.Text
  set newValue IamInstanceProfileProperty {..}
    = IamInstanceProfileProperty {name = Prelude.pure newValue, ..}