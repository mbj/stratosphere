module Stratosphere.CodeDeploy.DeploymentGroup.EC2TagFilterProperty (
        EC2TagFilterProperty(..), mkEC2TagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EC2TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html>
    EC2TagFilterProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-key>
                          key :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-type>
                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-value>
                          value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEC2TagFilterProperty :: EC2TagFilterProperty
mkEC2TagFilterProperty
  = EC2TagFilterProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       type' = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EC2TagFilterProperty where
  toResourceProperties EC2TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.EC2TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EC2TagFilterProperty where
  toJSON EC2TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" EC2TagFilterProperty where
  type PropertyType "Key" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Type" EC2TagFilterProperty where
  type PropertyType "Type" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" EC2TagFilterProperty where
  type PropertyType "Value" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {value = Prelude.pure newValue, ..}