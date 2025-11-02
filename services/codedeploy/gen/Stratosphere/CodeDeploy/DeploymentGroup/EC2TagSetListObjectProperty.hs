module Stratosphere.CodeDeploy.DeploymentGroup.EC2TagSetListObjectProperty (
        module Exports, EC2TagSetListObjectProperty(..),
        mkEC2TagSetListObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.EC2TagFilterProperty as Exports
import Stratosphere.ResourceProperties
data EC2TagSetListObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html>
    EC2TagSetListObjectProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html#cfn-codedeploy-deploymentgroup-ec2tagsetlistobject-ec2taggroup>
                                 ec2TagGroup :: (Prelude.Maybe [EC2TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEC2TagSetListObjectProperty :: EC2TagSetListObjectProperty
mkEC2TagSetListObjectProperty
  = EC2TagSetListObjectProperty
      {haddock_workaround_ = (), ec2TagGroup = Prelude.Nothing}
instance ToResourceProperties EC2TagSetListObjectProperty where
  toResourceProperties EC2TagSetListObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ec2TagGroup" Prelude.<$> ec2TagGroup])}
instance JSON.ToJSON EC2TagSetListObjectProperty where
  toJSON EC2TagSetListObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ec2TagGroup" Prelude.<$> ec2TagGroup]))
instance Property "Ec2TagGroup" EC2TagSetListObjectProperty where
  type PropertyType "Ec2TagGroup" EC2TagSetListObjectProperty = [EC2TagFilterProperty]
  set newValue EC2TagSetListObjectProperty {..}
    = EC2TagSetListObjectProperty
        {ec2TagGroup = Prelude.pure newValue, ..}